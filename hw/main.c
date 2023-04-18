#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <poll.h>
#include <lo/lo.h>
#include <sys/time.h>
#include "i2c.h"

struct timeval start, stop;

void timer_reset(void) {
    gettimeofday(&start, NULL);
}


// time in ms
float timer_get_elapsed(void) {
    gettimeofday(&stop, NULL);
    long elapsed_sec = stop.tv_sec - start.tv_sec;
    long elapsed_usec = stop.tv_usec - start.tv_usec;
    float e = (float)elapsed_sec + (float)elapsed_usec / 1000000.f;
    return e * 1000.f;
}

// patch loading stuff
void check_for_reload(); // checks key combo for reloading patch
void load_patch();

// osc handlers
void error(int num, const char *m, const char *path);
int led_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int leds_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int ledall_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led1_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led2_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led3_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led4_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
int led5_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);
void map_led_color(uint8_t color, uint8_t *rgb);
int poweroff_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data);

struct i2c_dev i2c;

// data to and from the peripheral
#define DATA_PI_SIZE 15
#define DATA_PO_SIZE 8
uint8_t data_pi[DATA_PI_SIZE] = {  1,1,1,
                                   1,1,1,
                                   1,1,1,
                                   1,1,1,
                                   1,1,1};
uint8_t data_po[DATA_PO_SIZE] = {0,0,0,0,0,0,0,0}; // 2 byte buttons, 6 knobs
uint32_t buttons_last[13] = {1,1,1,1, 1,1,1,1, 1,1,1,1, 1};
int fd;
struct pollfd pfd;
uint8_t int_pin;
int ret;
int mode = 0;  // mode of operation, 0 = normal / play mode, 1 = USB file transfer / test mode 

lo_address t;

int main() {

	//Enable gpio8, input, interrupt rising edge
	fd = open("/sys/class/gpio/export", O_WRONLY);
	write(fd, "8", 1);
	close(fd);
	fd = open("/sys/class/gpio/gpio8/direction", O_WRONLY); 
	write(fd, "in", 2);
	close(fd);
	fd = open("/sys/class/gpio/gpio8/edge", O_WRONLY);
	write(fd, "rising", 6);//write(fd, "both", 4);
	close(fd);
	fd = open("/sys/class/gpio/gpio8/value", O_RDONLY);
	pfd.fd = fd;
	pfd.events = POLLPRI;

    printf("opening i2c port\n");
    i2c.addr = 0x10;
    i2c.filename = "/dev/i2c-0";
    i2c_init(&i2c);
    printf("opened \n");

    // setup osc sender 
    t = lo_address_new("localhost", "4000");

    // setup osc server and add led method
    lo_server_thread st = lo_server_thread_new("4001", error);
    lo_server_thread_add_method(st, "/led", "iiii", led_handler, NULL);
    lo_server_thread_add_method(st, "/leds", "iiiiiiiiiiiiiii", leds_handler, NULL);
    lo_server_thread_add_method(st, "/ledall", "iii", ledall_handler, NULL);
    lo_server_thread_add_method(st, "/led1", "i", led1_handler, NULL);
    lo_server_thread_add_method(st, "/led2", "i", led2_handler, NULL);
    lo_server_thread_add_method(st, "/led3", "i", led3_handler, NULL);
    lo_server_thread_add_method(st, "/led4", "i", led4_handler, NULL);
    lo_server_thread_add_method(st, "/led5", "i", led5_handler, NULL);
    lo_server_thread_add_method(st, "/poweroff", "i", poweroff_handler, NULL);
    lo_server_thread_start(st); 
 
    usleep(10000); 
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);

    timer_reset();
   
    mode = 0;

    //start the patch
    load_patch();

    for (;;){
        
        // wait up to 50ms for int pin
		lseek(fd, 0, SEEK_SET);
		ret = poll(&pfd, 1, 50);
		read(fd, &int_pin, 1);      
        // get keys, knobs, set leds if ~50 ms has elapsed
        if (timer_get_elapsed() > 49) {
            timer_reset();
            
            i2c_read(&i2c, data_po, DATA_PO_SIZE);
            
            // buttons 
            uint16_t buttons = 0;
            buttons = data_po[1];
            buttons <<= 8;
            buttons |= data_po[0];
            //printf("hmm %x \n", buttons);
            for(uint8_t i = 0; i < 13; i++){
                if (((buttons >> i) & 1) != buttons_last[i]){
                    buttons_last[i] = (buttons >> i) & 1;
                    check_for_reload();
                    lo_send(t, "/key", "ii", i, ~(buttons >> i) & 1);
                }
            }

            // send knobs 
            lo_send(t, "/knobs", "iiiiii", data_po[2], data_po[3], data_po[4], data_po[5], data_po[6], data_po[7]);
            
        }
        // just get the keys if 50 ms not yet elapsed
        else {
            i2c_read(&i2c, data_po, 2);
             
            // buttons 
             uint16_t buttons = 0;
            buttons = data_po[1];
            buttons <<= 8;
            buttons |= data_po[0];
            for(uint8_t i = 0; i < 13; i++){
                if (((buttons >> i) & 1) != buttons_last[i]){
                    buttons_last[i] = (buttons >> i) & 1;
                    check_for_reload();
                    lo_send(t, "/key", "ii", i, ~(buttons >> i) & 1);
                }
            }
        }

    }
    // bye bye
    lo_server_thread_free(st);
    
    // disable gpio8
	fd = open("/sys/class/gpio/unexport", O_WRONLY);
	write(fd, "9", 1);
	close(fd);
    return 0;
}

void check_for_reload(){
    if(!buttons_last[8] && !buttons_last[9] && !buttons_last[10] && !buttons_last[11] && !buttons_last[12]){
        mode++;
        mode &= 0x1;

        load_patch();
    }
}

void load_patch() {
    printf("(re)loading patch \n");
    
    // play mode
    if (mode == 0) {
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000); 
        system("killall pd");
        
        printf("disable usb file transfer mode...\n");
        system("rmmod g_mass_storage");
        
        printf("remount sdcard...\n");
        system("umount /sdcard");
        system("mount /dev/mmcblk1p2 /sdcard");
        
        printf("run main patch\n");
        system("( cd /sdcard/pd ; pd -nogui -rt -audiobuf 8 main.pd &> /tmp/pd.log ) &");
    }
    
    // usb drive mode
    else if (mode == 1){
        printf("signal pd \n");
        lo_send(t, "/quitpd", "i", 1);
        usleep(120000); 
        system("killall pd");

        printf("unmount sdcard...\n");
        system("umount /sdcard");
        
        printf("start usb file transfer mode \n");
        system("rmmod g_mass_storage");
        system("modprobe g_mass_storage file=/dev/mmcblk1p2 stall=0 removable=1");
    
        printf("start test patch \n");
        system("( cd /home/root/hw/hwtest ; pd -nogui -rt -audiobuf 8 main.pd &> /tmp/pd.log ) &");
    }
}

void error(int num, const char *msg, const char *path) {
    printf("liblo server error %d in path %s: %s\n", num, path, msg);
    fflush(stdout);
}

int ledall_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t led_b = argv[0]->i;
    uint8_t led_g = argv[1]->i;
    uint8_t led_r = argv[2]->i;

     data_pi[12] = led_r; data_pi[13] = led_g; data_pi[14] = led_b; 
     data_pi[9] = led_r; data_pi[10] = led_g; data_pi[11] = led_b; 
     data_pi[6] = led_r; data_pi[7] = led_g; data_pi[8] = led_b; 
     data_pi[3] = led_r; data_pi[4] = led_g; data_pi[5] = led_b; 
     data_pi[0] = led_r; data_pi[1] = led_g; data_pi[2] = led_b; 

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);

    return 0;
}

int leds_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    
    data_pi[14] = argv[0]->i;
    data_pi[13] = argv[1]->i;
    data_pi[12] = argv[2]->i;
        
    data_pi[11] = argv[3]->i;
    data_pi[10] = argv[4]->i;
    data_pi[9] = argv[5]->i;
     
    data_pi[8] = argv[6]->i;
    data_pi[7] = argv[7]->i;
    data_pi[6] = argv[8]->i;
     
    data_pi[5] = argv[9]->i;
    data_pi[4] = argv[10]->i;
    data_pi[3] = argv[11]->i;
     
    data_pi[2] = argv[12]->i;
    data_pi[1] = argv[13]->i;
    data_pi[0] = argv[14]->i;
       
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;

}

int led_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t led_num = argv[0]->i;
    uint8_t led_b = argv[1]->i;
    uint8_t led_g = argv[2]->i;
    uint8_t led_r = argv[3]->i;

    if (led_num == 1) { data_pi[12] = led_r; data_pi[13] = led_g; data_pi[14] = led_b; }
    if (led_num == 2) { data_pi[9] = led_r; data_pi[10] = led_g; data_pi[11] = led_b; }
    if (led_num == 3) { data_pi[6] = led_r; data_pi[7] = led_g; data_pi[8] = led_b; }
    if (led_num == 4) { data_pi[3] = led_r; data_pi[4] = led_g; data_pi[5] = led_b; }
    if (led_num == 5) { data_pi[0] = led_r; data_pi[1] = led_g; data_pi[2] = led_b; }

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);

    return 0;
}

int led1_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[12] = rgb[2];
    data_pi[13] = rgb[1];
    data_pi[14] = rgb[0];
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;

}

int led2_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[9] = rgb[2];
    data_pi[10] = rgb[1];
    data_pi[11] = rgb[0];
    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

int led3_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[6] = rgb[2];
    data_pi[7] = rgb[1];
    data_pi[8] = rgb[0];

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

int led4_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[3] = rgb[2];
    data_pi[4] = rgb[1];
    data_pi[5] = rgb[0];

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

int led5_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    uint8_t color = argv[0]->i;
    uint8_t rgb[3];
    map_led_color(color, rgb);
    data_pi[0] = rgb[2];
    data_pi[1] = rgb[1];
    data_pi[2] = rgb[0];

    i2c_write(&i2c, data_pi, DATA_PI_SIZE);
    return 0;
}

void map_led_color(uint8_t color, uint8_t *rgb){
    if      (color == 0)     {rgb[0]=0;rgb[1]=0;rgb[2]=0;} 
    else if (color == 1)     {rgb[0]=100;rgb[1]=0;rgb[2]=0;} 
    else if (color == 2)     {rgb[0]=100;rgb[1]=100;rgb[2]=0;} 
    else if (color == 3)     {rgb[0]=0;rgb[1]=100;rgb[2]=0;} 
    else if (color == 4)     {rgb[0]=0;rgb[1]=100;rgb[2]=100;} 
    else if (color == 5)     {rgb[0]=0;rgb[1]=0;rgb[2]=100;} 
    else if (color == 6)     {rgb[0]=100;rgb[1]=0;rgb[2]=100;} 
    else if (color == 7)     {rgb[0]=100;rgb[1]=100;rgb[2]=100;} 
}

int poweroff_handler(const char *path, const char *types, lo_arg ** argv, int argc, void *data, void *user_data) {
    
    uint8_t final_leds[DATA_PI_SIZE] = {  20,0,5,
                                          20,0,6,
                                          20,0,7,
                                          20,0,8,
                                          20,0,9};

    i2c_write(&i2c, final_leds, DATA_PI_SIZE);
    return 0;
}

