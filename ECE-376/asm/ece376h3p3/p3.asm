; Samuel Swedberg ECE376 Homework 3
CNT0	equ	1
CNT1	equ	2

#include <p18f4620.inc>

	org 0x800
	call Init
Loop:
	incf PORTC,F
    call Wait
    goto Loop

; Subs

Init:
    clrf TRISA
    clrf TRISB
    clrf TRISC
    clrf TRISD
    clrf TRISE
    movlw 0x0F
    movwf ADCON1
    return

Wait:
    movlw 14 ; A
    movwf CNT1
W1:
    movlw 204 ; B
    movwf CNT0
W0:
    nop ; 10 clocks
    nop
    nop
    nop
    nop
    nop
    nop
    decfsz CNT0, F
    goto W0
    decfsz CNT1, F
    goto W1
    return

    end
