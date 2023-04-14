# 1 "load.c"
# 1 "/Users/owen1/repos/5-Moons/hw/atmega164//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "load.c"
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 1 3
# 99 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 1 3
# 37 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 1 3 4
# 9 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 3 4
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 1 3 4
# 125 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4

# 125 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/lib/avr-gcc/9/gcc/avr/9.3.0/include/stdint.h" 2 3 4
# 38 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 2 3
# 77 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 280 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 1 3
# 38 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 1 3
# 918 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 3
       
# 919 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iomxx4.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 39 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/iom164.h" 2 3
# 281 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 585 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 3
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/portpins.h" 1 3
# 586 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3

# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/common.h" 1 3
# 588 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3

# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/version.h" 1 3
# 590 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3






# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/fuse.h" 1 3
# 239 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 597 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3


# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/lock.h" 1 3
# 600 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/io.h" 2 3
# 2 "load.c" 2
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/interrupt.h" 1 3
# 3 "load.c" 2

# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 1 3
# 127 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 5 "load.c" 2
# 1 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/avr/sleep.h" 1 3
# 6 "load.c" 2
# 1 "apa102.h" 1
# 10 "apa102.h"

# 10 "apa102.h"
void apa102_init(void);
void apa102_transmit_byte(uint8_t data);
void apa102_start(void);
void apa102_end(void);
void apa102_set_led(uint8_t r, uint8_t g, uint8_t b);
void apa102_set_all_leds(uint8_t r, uint8_t g, uint8_t b);
# 7 "load.c" 2
# 1 "i2c_peripheral.h" 1






void i2c_init(uint8_t address);
void i2c_stop(void);
void i2c_setCallbacks(void (*recv)(uint8_t), void (*req)());

inline void __attribute__((always_inline)) i2c_transmitByte(uint8_t data)
{
  
# 13 "i2c_peripheral.h" 3
 (*(volatile uint8_t *)(0xBB)) 
# 13 "i2c_peripheral.h"
      = data;
}


# 16 "i2c_peripheral.h" 3
void __vector_26 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_26 (void)
# 16 "i2c_peripheral.h"
            ;
# 8 "load.c" 2
# 16 "load.c"
uint8_t data_po[8] = {0xFF,0xFF,0,0,0,0,0,0};
uint8_t debounce_timer[13] = {0,0,0,0,0,0,0,0};
uint8_t buttons[13] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1};


uint8_t data_pi[15] = { 0,0,0,
                        0,0,0,
                        0,0,0,
                        0,0,0,
                        0,0,0};

extern uint8_t i2c_recv_index;
extern uint8_t i2c_send_index;

void i2c_received(uint8_t received_data) {
    data_pi[i2c_recv_index] = received_data;
    i2c_recv_index++;
    if (i2c_recv_index == 15) i2c_recv_index = 0;
 }

void i2c_requested() {

    
# 38 "load.c" 3
   (*(volatile uint8_t *)((0x08) + 0x20))
# 38 "load.c"
   &=~(1<<2);;
    i2c_transmitByte(data_po[i2c_send_index]);
    i2c_send_index++;
    if (i2c_send_index == 8) i2c_send_index = 0;
}


void delay_ms(uint16_t dtime){
    uint32_t time;
    time = dtime;
    time *= 125;
    while(time){
        {asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");};
        time--;
    }
}

void read_adc(void) {
    uint8_t ch = 0;
    for (ch = 0; ch < 6; ch++) {
        
# 58 "load.c" 3
       (*(volatile uint8_t *)(0x7C)) 
# 58 "load.c"
             = ch;
        
# 59 "load.c" 3
       (*(volatile uint8_t *)(0x7C)) 
# 59 "load.c"
             |= (1 << 5);
        
# 60 "load.c" 3
       (*(volatile uint8_t *)(0x7A)) 
# 60 "load.c"
              = 0xD6;
        while(!(
# 61 "load.c" 3
               (*(volatile uint8_t *)(0x7A)) 
# 61 "load.c"
                      & 1<<
# 61 "load.c" 3
                           4
# 61 "load.c"
                               ));
        data_po[ch + 2] = 
# 62 "load.c" 3
                         (*(volatile uint8_t *)(0x79))
# 62 "load.c"
                             ;
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


    
# 77 "load.c" 3
   (*(volatile uint8_t *)((0X35) + 0x20))
# 77 "load.c"
        |= (1<<
# 77 "load.c" 3
               7
# 77 "load.c"
                  );
    
# 78 "load.c" 3
   (*(volatile uint8_t *)((0X35) + 0x20))
# 78 "load.c"
        |= (1<<
# 78 "load.c" 3
               7
# 78 "load.c"
                  );

    delay_ms(1);


    
# 83 "load.c" 3
   (*(volatile uint8_t *)((0x0A) + 0x20)) 
# 83 "load.c"
        = 0;
    
# 84 "load.c" 3
   (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 84 "load.c"
         = 0xFF;

    
# 86 "load.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 86 "load.c"
        &= ~0x1F;
    
# 87 "load.c" 3
   (*(volatile uint8_t *)((0x05) + 0x20)) 
# 87 "load.c"
         |= 0x1F;


    
# 90 "load.c" 3
   (*(volatile uint8_t *)((0x07) + 0x20)) 
# 90 "load.c"
        |= (1<<2);
    
# 91 "load.c" 3
   (*(volatile uint8_t *)((0x08) + 0x20))
# 91 "load.c"
   &=~(1<<2);;


    apa102_init();


    i2c_setCallbacks(i2c_received, i2c_requested);
    i2c_init(0x10);

    
# 100 "load.c" 3
   __asm__ __volatile__ ("sei" ::: "memory")
# 100 "load.c"
        ;

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


        if (ms_count >= 10) {
            ms_count = 0;

            set_leds();


            read_adc();
        }
        else ms_count++;

        for (uint8_t i = 0; i < 13; i++) {


            if (debounce_timer[i] == 0) {

                uint8_t tmp = 0;

                if (i < 8) {
                    tmp = 
# 135 "load.c" 3
                         (*(volatile uint8_t *)((0x09) + 0x20))
# 135 "load.c"
                             ;
                    tmp = (tmp >> i) & 1;
                } else {
                    tmp = 
# 138 "load.c" 3
                         (*(volatile uint8_t *)((0X03) + 0x20))
# 138 "load.c"
                             ;
                    tmp &= 0x1F;
                    tmp = (tmp >> (i - 8)) & 1;
                }


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

            uint8_t tmp0 = 0;
            uint8_t tmp1 = 0;
            for (uint8_t i = 0; i < 8; i++) tmp0 |= ((buttons[i] & 1) << i);
            for (uint8_t i = 0; i < 5; i++) tmp1 |= ((buttons[i+8] & 1) << i);
            data_po[0] = tmp0;
            data_po[1] = tmp1;
            
# 163 "load.c" 3
           (*(volatile uint8_t *)((0x08) + 0x20))
# 163 "load.c"
           |=(1<<2);;
            button_changed = 0;
        }

        delay_ms(1);

    }
}
