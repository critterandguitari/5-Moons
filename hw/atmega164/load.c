#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>
#include <math.h>
#include <avr/sleep.h>
#include "apa102.h"
#include "i2c_peripheral.h"

#define I2C_ADDR 0x10
#define INT_ON PORTC|=(1<<2);
#define INT_OFF PORTC&=~(1<<2);
#define DELAY8	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}

#define PO_SIZE 8
// data peripheral output, buttons and knobs
uint8_t data_po[PO_SIZE] = {0xFF,0xFF,0,0,0,0,0,0};  // byte 0,1 is buttons, remaining 6 are knobs
uint8_t debounce_timer[13] = {0,0,0,0,0,0,0,0};
uint8_t buttons[13] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1};

// data peripheral input, all leds, initialize to dim white
uint8_t data_pi[15] = { 1,1,1,
                        1,1,1,
                        1,1,1,
                        1,1,1,
                        1,1,1};

extern uint8_t i2c_recv_index;
extern uint8_t i2c_send_index;

void i2c_received(uint8_t received_data) {
    data_pi[i2c_recv_index] = received_data;
    i2c_recv_index++;
    if (i2c_recv_index == 15) i2c_recv_index = 0;
 }

void i2c_requested() {
    // buttons and knobs being read, so clear the interrupt output
    INT_OFF;
    i2c_transmitByte(data_po[i2c_send_index]);
    i2c_send_index++;
    if (i2c_send_index == PO_SIZE) i2c_send_index = 0;
}

// short delay in miliseconds (sort of)
void delay_ms(uint16_t dtime){
    uint32_t time;
    time = dtime;
    time *= 125;
    while(time){
        DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;
        time--;
    }
}

void read_adc(void) {
    uint8_t ch = 0;
    for (ch = 0; ch < 6; ch++) {
        ADMUX = ch;
        ADMUX |= (1 << 5);    // left justify the result, 8 bits in ADCH
        ADCSRA = 0xD6;        // start it
        while(!(ADCSRA & 1<<ADIF));
        data_po[ch + 2] = ADCH;  // data_po is 2 byte for 8 buttons, 6 bytes knobs
    }
}

void set_leds(void) {
    apa102_start();
    for (uint8_t i = 0; i<5; i++){
        apa102_set_led(data_pi[i*3], data_pi[(i*3)+1], data_pi[(i*3)+2]);
    }
    apa102_end();
}

int main(void) {

    // disable jtag
    MCUCR|= (1<<JTD);
    MCUCR|= (1<<JTD);
    
    delay_ms(1);

    // buttons are on port D, set input, pullups on
    DDRD = 0;
    PORTD = 0xFF;
    // PB 0-4 are inputs
    DDRB &= ~0x1F;
    PORTB |= 0x1F;

    // output interrupt signal on PC2
    DDRC |= (1<<2);
    INT_OFF;
    
    // init LEDs
    apa102_init();

    // init I2C
    i2c_setCallbacks(i2c_received, i2c_requested);
    i2c_init(I2C_ADDR);
    
    sei();

    for (int i = 0; i <50; i++){
        apa102_set_all_leds(1, 1, i % 50);delay_ms(30);
    }
    for (int i = 0; i <50; i++){
        apa102_set_all_leds(3, 3, i % 50);delay_ms(30);
    }
    for (int i = 0; i <50; i++){
        apa102_set_all_leds(6, 6, i % 50);delay_ms(30);
    }

    uint8_t ms_count = 0;
    uint8_t button_changed = 0;
    for(;;) {
        
        // every 10 ms
        if (ms_count >= 10) {
            ms_count = 0;
            // set the leds with values from i2c
            set_leds();

            // get adc values
            read_adc();
        }
        else ms_count++;
 
        for (uint8_t i = 0; i < 13; i++) {

            // button out of debounce interval
            if (debounce_timer[i] == 0) {
               
                uint8_t tmp = 0;
                // get button
                if (i < 8) {
                    tmp = PIND;
                    tmp = (tmp >> i) & 1;
                } else {
                    tmp = PINB;
                    tmp &= 0x1F;
                    tmp = (tmp >> (i - 8)) & 1;
                }
                
                // check if changed
                if (tmp != buttons[i]) {
                    buttons[i] = tmp;
                    debounce_timer[i] = 25;
                    button_changed = 1;
                }
            }
            else {
                debounce_timer[i]--;
            }
        }
            
        if (button_changed) {
            // update and send it out. use tmp so data_po is updated atomically 
            uint8_t tmp0 = 0;
            uint8_t tmp1 = 0;
            for (uint8_t i = 0; i < 8; i++) tmp0 |= ((buttons[i] & 1) << i);
            for (uint8_t i = 0; i < 5; i++) tmp1 |= ((buttons[i+8] & 1) << i);
            data_po[0] = tmp0;
            data_po[1] = tmp1;
            INT_ON;
            button_changed = 0;
        }

        delay_ms(1);

    } // for(;;);
} // main()
