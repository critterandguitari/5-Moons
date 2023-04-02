	.file	"load.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_received,"ax",@progbits
.global	i2c_received
	.type	i2c_received, @function
i2c_received:
.LVL0:
.LFB3:
	.file 1 "load.c"
	.loc 1 30 42 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 31 5 view .LVU1
	.loc 1 31 12 is_stmt 0 view .LVU2
	lds r25,i2c_recv_index
	mov r30,r25
	ldi r31,0
	.loc 1 31 29 view .LVU3
	subi r30,lo8(-(data_pi))
	sbci r31,hi8(-(data_pi))
	st Z,r24
	.loc 1 32 5 is_stmt 1 view .LVU4
	.loc 1 32 19 is_stmt 0 view .LVU5
	ldi r24,lo8(1)
.LVL1:
	.loc 1 32 19 view .LVU6
	add r24,r25
	.loc 1 33 5 is_stmt 1 view .LVU7
	.loc 1 33 8 is_stmt 0 view .LVU8
	cpi r25,lo8(14)
	breq .L2
	.loc 1 32 19 view .LVU9
	sts i2c_recv_index,r24
	ret
.L2:
	.loc 1 33 31 is_stmt 1 discriminator 1 view .LVU10
	.loc 1 33 46 is_stmt 0 discriminator 1 view .LVU11
	sts i2c_recv_index,__zero_reg__
/* epilogue start */
	.loc 1 34 2 discriminator 1 view .LVU12
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_received, .-i2c_received
	.section	.text.i2c_requested,"ax",@progbits
.global	i2c_requested
	.type	i2c_requested, @function
i2c_requested:
.LFB4:
	.loc 1 36 22 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 38 4 view .LVU14
	.loc 1 38 4 is_stmt 0 view .LVU15
	cbi 0x8,2
	.loc 1 38 14 is_stmt 1 view .LVU16
	.loc 1 39 5 view .LVU17
	lds r30,i2c_send_index
	ldi r31,0
	subi r30,lo8(-(data_po))
	sbci r31,hi8(-(data_po))
	ld r24,Z
.LVL2:
.LBB4:
.LBI4:
	.file 2 "i2c_peripheral.h"
	.loc 2 11 44 view .LVU18
.LBB5:
	.loc 2 13 2 view .LVU19
	.loc 2 13 7 is_stmt 0 view .LVU20
	sts 187,r24
.LVL3:
	.loc 2 13 7 view .LVU21
.LBE5:
.LBE4:
	.loc 1 40 5 is_stmt 1 view .LVU22
	.loc 1 40 19 is_stmt 0 view .LVU23
	lds r24,i2c_send_index
	ldi r25,lo8(1)
	add r25,r24
	.loc 1 41 5 is_stmt 1 view .LVU24
	.loc 1 41 8 is_stmt 0 view .LVU25
	cpi r24,lo8(7)
	breq .L5
	.loc 1 40 19 view .LVU26
	sts i2c_send_index,r25
	ret
.L5:
	.loc 1 41 30 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 41 45 is_stmt 0 discriminator 1 view .LVU28
	sts i2c_send_index,__zero_reg__
/* epilogue start */
	.loc 1 42 1 discriminator 1 view .LVU29
	ret
	.cfi_endproc
.LFE4:
	.size	i2c_requested, .-i2c_requested
	.section	.text.delay_ms,"ax",@progbits
.global	delay_ms
	.type	delay_ms, @function
delay_ms:
.LVL4:
.LFB5:
	.loc 1 45 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 46 5 view .LVU31
	.loc 1 47 5 view .LVU32
	.loc 1 48 5 view .LVU33
	.loc 1 48 10 is_stmt 0 view .LVU34
	movw r18,r24
	ldi r26,lo8(125)
	ldi r27,0
	call __umulhisi3
.LVL5:
	.loc 1 49 5 is_stmt 1 view .LVU35
.L8:
	.loc 1 49 10 view .LVU36
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L9
/* epilogue start */
	.loc 1 53 1 is_stmt 0 view .LVU37
	ret
.L9:
	.loc 1 50 10 is_stmt 1 view .LVU38
/* #APP */
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 30 view .LVU39
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 50 view .LVU40
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 70 view .LVU41
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 90 view .LVU42
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 110 view .LVU43
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 130 view .LVU44
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 150 view .LVU45
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 171 view .LVU46
	.loc 1 50 173 view .LVU47
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 193 view .LVU48
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 213 view .LVU49
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 233 view .LVU50
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 253 view .LVU51
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 273 view .LVU52
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 293 view .LVU53
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 313 view .LVU54
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 334 view .LVU55
	.loc 1 50 336 view .LVU56
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 356 view .LVU57
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 376 view .LVU58
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 396 view .LVU59
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 416 view .LVU60
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 436 view .LVU61
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 456 view .LVU62
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 476 view .LVU63
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 497 view .LVU64
	.loc 1 50 499 view .LVU65
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 519 view .LVU66
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 539 view .LVU67
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 559 view .LVU68
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 579 view .LVU69
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 599 view .LVU70
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 619 view .LVU71
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 639 view .LVU72
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 660 view .LVU73
	.loc 1 50 662 view .LVU74
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 682 view .LVU75
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 702 view .LVU76
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 722 view .LVU77
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 742 view .LVU78
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 762 view .LVU79
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 782 view .LVU80
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 802 view .LVU81
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 823 view .LVU82
	.loc 1 50 825 view .LVU83
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 845 view .LVU84
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 865 view .LVU85
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 885 view .LVU86
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 905 view .LVU87
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 925 view .LVU88
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 945 view .LVU89
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 965 view .LVU90
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 986 view .LVU91
	.loc 1 50 988 view .LVU92
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1008 view .LVU93
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1028 view .LVU94
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1048 view .LVU95
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1068 view .LVU96
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1088 view .LVU97
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1108 view .LVU98
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1128 view .LVU99
 ;  50 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 50 1149 view .LVU100
	.loc 1 51 9 view .LVU101
	.loc 1 51 13 is_stmt 0 view .LVU102
/* #NOAPP */
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL6:
	.loc 1 51 13 view .LVU103
	rjmp .L8
	.cfi_endproc
.LFE5:
	.size	delay_ms, .-delay_ms
	.section	.text.read_adc,"ax",@progbits
.global	read_adc
	.type	read_adc, @function
read_adc:
.LFB6:
	.loc 1 55 21 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 56 5 view .LVU105
.LVL7:
	.loc 1 57 5 view .LVU106
	.loc 1 57 18 view .LVU107
	ldi r30,lo8(data_po+2)
	ldi r31,hi8(data_po+2)
	.loc 1 57 13 is_stmt 0 view .LVU108
	ldi r24,0
	.loc 1 60 15 view .LVU109
	ldi r18,lo8(-42)
.LVL8:
.L12:
	.loc 1 58 8 is_stmt 1 view .LVU110
	.loc 1 58 14 is_stmt 0 view .LVU111
	sts 124,r24
	.loc 1 59 8 is_stmt 1 view .LVU112
	.loc 1 59 14 is_stmt 0 view .LVU113
	lds r25,124
	ori r25,lo8(32)
	sts 124,r25
	.loc 1 60 8 is_stmt 1 view .LVU114
	.loc 1 60 15 is_stmt 0 view .LVU115
	sts 122,r18
	.loc 1 61 9 is_stmt 1 view .LVU116
.L11:
	.loc 1 61 34 discriminator 1 view .LVU117
	.loc 1 61 14 discriminator 1 view .LVU118
	.loc 1 61 17 is_stmt 0 discriminator 1 view .LVU119
	lds r25,122
	.loc 1 61 14 discriminator 1 view .LVU120
	sbrs r25,4
	rjmp .L11
	.loc 1 62 9 is_stmt 1 discriminator 2 view .LVU121
	.loc 1 62 27 is_stmt 0 discriminator 2 view .LVU122
	lds r25,121
	.loc 1 62 25 discriminator 2 view .LVU123
	st Z+,r25
	.loc 1 57 26 is_stmt 1 discriminator 2 view .LVU124
	.loc 1 57 28 is_stmt 0 discriminator 2 view .LVU125
	subi r24,lo8(-(1))
.LVL9:
	.loc 1 57 18 is_stmt 1 discriminator 2 view .LVU126
	.loc 1 57 5 is_stmt 0 discriminator 2 view .LVU127
	cpi r24,lo8(6)
	brne .L12
/* epilogue start */
	.loc 1 64 1 view .LVU128
	ret
	.cfi_endproc
.LFE6:
	.size	read_adc, .-read_adc
	.section	.text.set_leds,"ax",@progbits
.global	set_leds
	.type	set_leds, @function
set_leds:
.LFB7:
	.loc 1 66 21 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 67 5 view .LVU130
	call apa102_start
.LVL10:
	.loc 1 68 5 view .LVU131
.LBB6:
	.loc 1 68 10 view .LVU132
	.loc 1 68 25 view .LVU133
	ldi r28,lo8(data_pi)
	ldi r29,hi8(data_pi)
.LVL11:
.L17:
	.loc 1 69 9 discriminator 3 view .LVU134
	ldd r20,Y+2
	ldd r22,Y+1
	ld r24,Y
	call apa102_set_led
.LVL12:
	.loc 1 68 30 discriminator 3 view .LVU135
	.loc 1 68 25 discriminator 3 view .LVU136
	adiw r28,3
	.loc 1 68 5 is_stmt 0 discriminator 3 view .LVU137
	ldi r24,hi8(data_pi+15)
	cpi r28,lo8(data_pi+15)
	cpc r29,r24
	brne .L17
.LBE6:
	.loc 1 71 5 is_stmt 1 view .LVU138
/* epilogue start */
	.loc 1 72 1 is_stmt 0 view .LVU139
	pop r29
	pop r28
	.loc 1 71 5 view .LVU140
	jmp apa102_end
.LVL13:
	.cfi_endproc
.LFE7:
	.size	set_leds, .-set_leds
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 74 16 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 4 view .LVU142
	.loc 1 77 9 is_stmt 0 view .LVU143
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 78 4 is_stmt 1 view .LVU144
	.loc 1 78 9 is_stmt 0 view .LVU145
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 80 5 is_stmt 1 view .LVU146
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL14:
	.loc 1 83 4 view .LVU147
	.loc 1 83 9 is_stmt 0 view .LVU148
	out 0xa,__zero_reg__
	.loc 1 84 4 is_stmt 1 view .LVU149
	.loc 1 84 10 is_stmt 0 view .LVU150
	ldi r24,lo8(-1)
	out 0xb,r24
	.loc 1 86 4 is_stmt 1 view .LVU151
	.loc 1 86 9 is_stmt 0 view .LVU152
	in r24,0x4
	andi r24,lo8(-32)
	out 0x4,r24
	.loc 1 87 4 is_stmt 1 view .LVU153
	.loc 1 87 10 is_stmt 0 view .LVU154
	in r24,0x5
	ori r24,lo8(31)
	out 0x5,r24
	.loc 1 90 4 is_stmt 1 view .LVU155
	.loc 1 90 9 is_stmt 0 view .LVU156
	sbi 0x7,2
	.loc 1 91 4 is_stmt 1 view .LVU157
	.loc 1 91 4 is_stmt 0 view .LVU158
	cbi 0x8,2
	.loc 1 91 14 is_stmt 1 view .LVU159
	.loc 1 94 5 view .LVU160
	call apa102_init
.LVL15:
	.loc 1 97 5 view .LVU161
	ldi r22,lo8(gs(i2c_requested))
	ldi r23,hi8(gs(i2c_requested))
	ldi r24,lo8(gs(i2c_received))
	ldi r25,hi8(gs(i2c_received))
	call i2c_setCallbacks
.LVL16:
	.loc 1 98 5 view .LVU162
	ldi r24,lo8(16)
	call i2c_init
.LVL17:
	.loc 1 100 4 view .LVU163
/* #APP */
 ;  100 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 102 5 view .LVU164
/* #NOAPP */
	ldi r20,lo8(100)
	ldi r22,0
	ldi r24,0
	call apa102_set_all_leds
.LVL18:
	.loc 1 102 36 view .LVU165
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL19:
	.loc 1 103 5 view .LVU166
	ldi r20,lo8(100)
	ldi r22,lo8(100)
	ldi r24,0
	call apa102_set_all_leds
.LVL20:
	.loc 1 103 38 view .LVU167
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL21:
	.loc 1 104 5 view .LVU168
	ldi r20,lo8(100)
	ldi r22,0
	ldi r24,lo8(100)
	call apa102_set_all_leds
.LVL22:
	.loc 1 104 38 view .LVU169
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL23:
	.loc 1 105 5 view .LVU170
	ldi r20,lo8(100)
	ldi r22,lo8(100)
	ldi r24,lo8(100)
	call apa102_set_all_leds
.LVL24:
	.loc 1 105 40 view .LVU171
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL25:
	.loc 1 106 5 view .LVU172
	ldi r20,0
	ldi r22,0
	ldi r24,0
	call apa102_set_all_leds
.LVL26:
	.loc 1 106 34 view .LVU173
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL27:
	.loc 1 108 5 view .LVU174
	.loc 1 109 5 view .LVU175
	.loc 1 108 13 is_stmt 0 view .LVU176
	mov r15,__zero_reg__
.LBB7:
.LBB8:
	.loc 1 142 39 view .LVU177
	ldi r24,lo8(25)
	mov r14,r24
.LVL28:
.L30:
	.loc 1 142 39 view .LVU178
.LBE8:
.LBE7:
	.loc 1 110 5 is_stmt 1 view .LVU179
	.loc 1 113 9 view .LVU180
	.loc 1 113 12 is_stmt 0 view .LVU181
	ldi r18,lo8(9)
	cp r18,r15
	brlo .+2
	rjmp .L20
	.loc 1 114 13 is_stmt 1 view .LVU182
.LVL29:
	.loc 1 116 13 view .LVU183
	call set_leds
.LVL30:
	.loc 1 119 13 view .LVU184
	call read_adc
.LVL31:
	.loc 1 114 22 is_stmt 0 view .LVU185
	mov r15,__zero_reg__
.LVL32:
.L21:
	.loc 1 123 9 is_stmt 1 view .LVU186
.LBB11:
	.loc 1 123 14 view .LVU187
	.loc 1 123 29 view .LVU188
	ldi r30,lo8(debounce_timer)
	ldi r31,hi8(debounce_timer)
.LBE11:
	.loc 1 114 22 is_stmt 0 view .LVU189
	ldi r19,0
	ldi r18,0
	ldi r20,0
.LVL33:
.L26:
.LBB12:
	.loc 1 126 13 is_stmt 1 view .LVU190
	.loc 1 126 31 is_stmt 0 view .LVU191
	ld r24,Z+
	.loc 1 126 16 view .LVU192
	cpse r24,__zero_reg__
	rjmp .L22
.LBB9:
	.loc 1 128 17 is_stmt 1 view .LVU193
.LVL34:
	.loc 1 130 17 view .LVU194
	.loc 1 130 20 is_stmt 0 view .LVU195
	cpi r18,lo8(8)
	brlo .+2
	rjmp .L23
	.loc 1 131 21 is_stmt 1 view .LVU196
	.loc 1 131 25 is_stmt 0 view .LVU197
	in r24,0x9
.LVL35:
	.loc 1 132 21 is_stmt 1 view .LVU198
	.loc 1 132 32 is_stmt 0 view .LVU199
	ldi r25,0
	mov r0,r18
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
.LVL36:
.L37:
	.loc 1 136 25 view .LVU200
	andi r24,lo8(1)
.LVL37:
	.loc 1 140 17 is_stmt 1 view .LVU201
	movw r26,r18
	subi r26,lo8(-(buttons))
	sbci r27,hi8(-(buttons))
	.loc 1 140 20 is_stmt 0 view .LVU202
	ld r25,X
	cp r25,r24
	breq .L25
	.loc 1 141 21 is_stmt 1 view .LVU203
	.loc 1 141 32 is_stmt 0 view .LVU204
	st X,r24
	.loc 1 142 21 is_stmt 1 view .LVU205
	.loc 1 142 39 is_stmt 0 view .LVU206
	movw r26,r30
	sbiw r26,1
	st X,r14
	.loc 1 143 21 is_stmt 1 view .LVU207
.LVL38:
	.loc 1 143 36 is_stmt 0 view .LVU208
	ldi r20,lo8(1)
.LVL39:
.L25:
	.loc 1 143 36 view .LVU209
.LBE9:
	.loc 1 123 37 is_stmt 1 discriminator 2 view .LVU210
	.loc 1 123 29 discriminator 2 view .LVU211
	subi r18,-1
	sbci r19,-1
.LVL40:
	.loc 1 123 9 is_stmt 0 discriminator 2 view .LVU212
	cpi r18,13
	cpc r19,__zero_reg__
	brne .L26
.LBE12:
	.loc 1 151 9 is_stmt 1 view .LVU213
	.loc 1 151 12 is_stmt 0 view .LVU214
	tst r20
	breq .L27
	ldi r30,lo8(buttons)
	ldi r31,hi8(buttons)
	ldi r25,0
	ldi r24,0
.LBB13:
	.loc 1 153 21 view .LVU215
	ldi r19,0
.LVL41:
.L28:
.LBB14:
	.loc 1 155 45 is_stmt 1 discriminator 3 view .LVU216
	.loc 1 155 62 is_stmt 0 discriminator 3 view .LVU217
	ld r18,Z+
	.loc 1 155 66 discriminator 3 view .LVU218
	andi r18,1
	mov r28,r18
	ldi r18,0
	mov r29,r18
	.loc 1 155 71 discriminator 3 view .LVU219
	movw r20,r28
	mov r0,r24
	rjmp 2f
	1:
	lsl r20
	2:
	dec r0
	brpl 1b
	.loc 1 155 50 discriminator 3 view .LVU220
	or r19,r20
.LVL42:
	.loc 1 155 40 is_stmt 1 discriminator 3 view .LVU221
	.loc 1 155 33 discriminator 3 view .LVU222
	adiw r24,1
.LVL43:
	.loc 1 155 13 is_stmt 0 discriminator 3 view .LVU223
	cpi r24,8
	cpc r25,__zero_reg__
	brne .L28
	ldi r30,lo8(buttons+8)
	ldi r31,hi8(buttons+8)
	.loc 1 155 13 view .LVU224
	ldi r25,0
	ldi r24,0
.LVL44:
.L29:
	.loc 1 155 13 view .LVU225
.LBE14:
.LBB15:
	.loc 1 156 45 is_stmt 1 discriminator 3 view .LVU226
	.loc 1 156 62 is_stmt 0 discriminator 3 view .LVU227
	ld r20,Z+
	.loc 1 156 68 discriminator 3 view .LVU228
	mov r16,r20
	andi r16,1
	ldi r17,0
	.loc 1 156 73 discriminator 3 view .LVU229
	movw r20,r16
	mov r0,r24
	rjmp 2f
	1:
	lsl r20
	2:
	dec r0
	brpl 1b
	.loc 1 156 50 discriminator 3 view .LVU230
	or r18,r20
.LVL45:
	.loc 1 156 40 is_stmt 1 discriminator 3 view .LVU231
	.loc 1 156 33 discriminator 3 view .LVU232
	adiw r24,1
.LVL46:
	.loc 1 156 13 is_stmt 0 discriminator 3 view .LVU233
	cpi r24,5
	cpc r25,__zero_reg__
	brne .L29
.LBE15:
	.loc 1 157 13 is_stmt 1 view .LVU234
	.loc 1 157 24 is_stmt 0 view .LVU235
	sts data_po,r19
	.loc 1 158 13 is_stmt 1 view .LVU236
	.loc 1 158 24 is_stmt 0 view .LVU237
	sts data_po+1,r18
	.loc 1 159 12 is_stmt 1 view .LVU238
	.loc 1 159 12 is_stmt 0 view .LVU239
	sbi 0x8,2
	.loc 1 159 21 is_stmt 1 view .LVU240
	.loc 1 160 13 view .LVU241
.LVL47:
.L27:
	.loc 1 160 13 is_stmt 0 view .LVU242
.LBE13:
	.loc 1 163 9 is_stmt 1 view .LVU243
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL48:
	.loc 1 110 10 view .LVU244
	.loc 1 113 12 is_stmt 0 view .LVU245
	rjmp .L30
.L20:
	.loc 1 121 14 is_stmt 1 view .LVU246
	.loc 1 121 22 is_stmt 0 view .LVU247
	inc r15
.LVL49:
	.loc 1 121 22 view .LVU248
	rjmp .L21
.LVL50:
.L23:
.LBB16:
.LBB10:
	.loc 1 134 21 is_stmt 1 view .LVU249
	.loc 1 134 25 is_stmt 0 view .LVU250
	in r24,0x3
.LVL51:
	.loc 1 135 21 is_stmt 1 view .LVU251
	.loc 1 136 21 view .LVU252
	.loc 1 135 25 is_stmt 0 view .LVU253
	andi r24,lo8(31)
.LVL52:
	.loc 1 136 32 view .LVU254
	ldi r25,0
	movw r22,r18
	subi r22,8
	sbc r23,__zero_reg__
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r22
	brpl 1b
.LVL53:
	.loc 1 136 32 view .LVU255
	rjmp .L37
.L22:
	.loc 1 136 32 view .LVU256
.LBE10:
	.loc 1 147 17 is_stmt 1 view .LVU257
	.loc 1 147 34 is_stmt 0 view .LVU258
	movw r26,r30
	sbiw r26,1
	subi r24,lo8(-(-1))
	st X,r24
	rjmp .L25
.LBE16:
	.cfi_endproc
.LFE8:
	.size	main, .-main
.global	data_pi
	.section	.data.data_pi,"aw"
	.type	data_pi, @object
	.size	data_pi, 15
data_pi:
	.string	"\n"
	.string	""
	.string	"\024"
	.string	""
	.string	"\036"
	.string	""
	.string	"("
	.string	""
	.string	"2"
	.string	""
.global	buttons
	.section	.data.buttons,"aw"
	.type	buttons, @object
	.size	buttons, 13
buttons:
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001"
.global	debounce_timer
	.section	.bss.debounce_timer,"aw",@nobits
	.type	debounce_timer, @object
	.size	debounce_timer, 13
debounce_timer:
	.zero	13
.global	data_po
	.section	.data.data_po,"aw"
	.type	data_po, @object
	.size	data_po, 8
data_po:
	.string	"\377\377"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.text
.Letext0:
	.file 3 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.file 4 "apa102.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x520
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0xc
	.long	.LASF33
	.long	.LASF34
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7e
	.byte	0x16
	.long	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x80
	.byte	0x16
	.long	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x82
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	0x2c
	.long	0x91
	.uleb128 0x6
	.long	0x52
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	data_po
	.uleb128 0x5
	.long	0x2c
	.long	0xb3
	.uleb128 0x6
	.long	0x52
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	debounce_timer
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	buttons
	.uleb128 0x5
	.long	0x2c
	.long	0xe7
	.uleb128 0x6
	.long	0x52
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.long	0xd7
	.uleb128 0x5
	.byte	0x3
	.long	data_pi
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.long	0x2c
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.long	0x2c
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.long	0x3f
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x396
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x6c
	.byte	0xd
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xb
	.long	.Ldebug_ranges0+0
	.long	0x189
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.byte	0x16
	.long	0x2c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xd
	.long	.Ldebug_ranges0+0x28
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x80
	.byte	0x19
	.long	0x2c
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LBB13
	.long	.LBE13-.LBB13
	.long	0x1fb
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x99
	.byte	0x15
	.long	0x2c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x9a
	.byte	0x15
	.long	0x2c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xe
	.long	.LBB14
	.long	.LBE14-.LBB14
	.long	0x1de
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.byte	0x1a
	.long	0x2c
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.uleb128 0xf
	.long	.LBB15
	.long	.LBE15-.LBB15
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.byte	0x1a
	.long	0x2c
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LVL14
	.long	0x412
	.long	0x213
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.long	.LVL15
	.long	0x4cf
	.uleb128 0x10
	.long	.LVL16
	.long	0x4db
	.long	0x246
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_received
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_requested
	.byte	0
	.uleb128 0x10
	.long	.LVL17
	.long	0x4e7
	.long	0x259
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.long	.LVL18
	.long	0x4f3
	.long	0x277
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.long	.LVL19
	.long	0x412
	.long	0x290
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.long	.LVL20
	.long	0x4f3
	.long	0x2af
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.long	.LVL21
	.long	0x412
	.long	0x2c8
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.long	.LVL22
	.long	0x4f3
	.long	0x2e7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.long	.LVL23
	.long	0x412
	.long	0x300
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.long	.LVL24
	.long	0x4f3
	.long	0x320
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.long	.LVL25
	.long	0x412
	.long	0x339
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.long	.LVL26
	.long	0x4f3
	.long	0x356
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL27
	.long	0x412
	.long	0x36f
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.long	.LVL30
	.long	0x396
	.uleb128 0x12
	.long	.LVL31
	.long	0x3e8
	.uleb128 0x13
	.long	.LVL48
	.long	0x412
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF20
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e8
	.uleb128 0xe
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0x3d5
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x44
	.byte	0x12
	.long	0x2c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x12
	.long	.LVL12
	.long	0x4ff
	.byte	0
	.uleb128 0x12
	.long	.LVL10
	.long	0x50b
	.uleb128 0x15
	.long	.LVL13
	.long	0x517
	.byte	0
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x412
	.uleb128 0xc
	.string	"ch"
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.uleb128 0x14
	.long	.LASF22
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x450
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x2d
	.byte	0x18
	.long	0x46
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.long	0x60
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x17
	.long	.LASF37
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a
	.uleb128 0x18
	.long	0x4b5
	.long	.LBI4
	.byte	.LVU18
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x27
	.byte	0x5
	.uleb128 0x19
	.long	0x4c2
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b5
	.uleb128 0x1a
	.long	.LASF38
	.byte	0x1
	.byte	0x1e
	.byte	0x1b
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x2
	.byte	0xb
	.byte	0x2c
	.byte	0x3
	.long	0x4cf
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x2
	.byte	0xb
	.byte	0x45
	.long	0x2c
	.byte	0
	.uleb128 0x1d
	.long	.LASF25
	.long	.LASF25
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF26
	.long	.LASF26
	.byte	0x2
	.byte	0x9
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF27
	.long	.LASF27
	.byte	0x2
	.byte	0x7
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF28
	.long	.LASF28
	.byte	0x4
	.byte	0xf
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF29
	.long	.LASF29
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF30
	.long	.LASF30
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF31
	.long	.LASF31
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 .LVU175
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 0
.LLST5:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x5f
	.long	.LVL29
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LFE8
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LVUS6:
	.uleb128 .LVU176
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU216
	.uleb128 .LVU242
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 0
.LLST6:
	.long	.LVL27
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL38
	.word	0x1
	.byte	0x64
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL39
	.long	.LVL41
	.word	0x1
	.byte	0x64
	.long	.LVL47
	.long	.LVL50
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL50
	.long	.LFE8
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LVUS7:
	.uleb128 .LVU188
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU249
	.uleb128 0
.LLST7:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL39
	.word	0x1
	.byte	0x62
	.long	.LVL39
	.long	.LVL40
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x62
	.long	.LVL50
	.long	.LFE8
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS8:
	.uleb128 .LVU194
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU209
	.uleb128 .LVU249
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU255
.LLST8:
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	.LVL37
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL51
	.word	0x1
	.byte	0x68
	.long	.LVL51
	.long	.LVL52
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS9:
	.uleb128 .LVU216
	.uleb128 .LVU242
.LLST9:
	.long	.LVL41
	.long	.LVL47
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LVUS10:
	.uleb128 .LVU225
	.uleb128 .LVU242
.LLST10:
	.long	.LVL44
	.long	.LVL47
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS11:
	.uleb128 .LVU216
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU225
.LLST11:
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x68
	.long	.LVL42
	.long	.LVL43
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS12:
	.uleb128 .LVU225
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU242
.LLST12:
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x68
	.long	.LVL45
	.long	.LVL46
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS4:
	.uleb128 .LVU133
	.uleb128 .LVU134
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS3:
	.uleb128 .LVU106
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LFE6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LFE5
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE3
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB11
	.long	.LBE11
	.long	.LBB12
	.long	.LBE12
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LBB8
	.long	.LBE8
	.long	.LBB9
	.long	.LBE9
	.long	.LBB10
	.long	.LBE10
	.long	0
	.long	0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"apa102_init"
.LASF17:
	.string	"button_changed"
.LASF12:
	.string	"buttons"
.LASF26:
	.string	"i2c_setCallbacks"
.LASF20:
	.string	"set_leds"
.LASF18:
	.string	"tmp0"
.LASF19:
	.string	"tmp1"
.LASF21:
	.string	"read_adc"
.LASF40:
	.string	"data"
.LASF28:
	.string	"apa102_set_all_leds"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"delay_ms"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"data_pi"
.LASF16:
	.string	"ms_count"
.LASF34:
	.string	"/Users/owen1/repos/tracks/interface/mcu-i2c/atmega164"
.LASF27:
	.string	"i2c_init"
.LASF10:
	.string	"data_po"
.LASF11:
	.string	"debounce_timer"
.LASF35:
	.string	"main"
.LASF32:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF39:
	.string	"i2c_transmitByte"
.LASF14:
	.string	"i2c_recv_index"
.LASF4:
	.string	"unsigned int"
.LASF37:
	.string	"i2c_requested"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF36:
	.string	"dtime"
.LASF33:
	.string	"load.c"
.LASF23:
	.string	"time"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"i2c_send_index"
.LASF3:
	.string	"uint16_t"
.LASF24:
	.string	"i2c_received"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"apa102_end"
.LASF29:
	.string	"apa102_set_led"
.LASF38:
	.string	"received_data"
.LASF30:
	.string	"apa102_start"
	.ident	"GCC: (Homebrew AVR GCC 9.3.0_3) 9.3.0"
.global __do_copy_data
.global __do_clear_bss
