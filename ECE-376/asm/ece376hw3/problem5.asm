; Samuel Swedberg ECE376 Homework 3
CNT0	equ	1
CNT1	equ	2

#include <p18f4620.inc>

	org 0x800
	goto Init

Loop:
	btfsc	PORTB,0	; if RB0 pressed
	goto    S0
    
	btfsc	PORTB,1	; if RB1 pressed
	goto    S1

	btfsc	PORTB,2	; if RB2 pressed
	goto    S2

	btfsc	PORTB,3	; if RB3 pressed
	goto    S3

	goto	Loop

Init:
    clrf    TRISB
	movlw	0xFF
	movwf	TRISB
	clrf	TRISC
    clrf	TRISD
    movlw   0x00
    movwf   TRISC
    movwf   TRISD
	movlw	0x0F
	movwf	ADCON1
    clrf    PORTC
    clrf    PORTD
	goto Loop

S0:
    movlw   0
    movwf PORTC
    movlw   0
    movwf PORTD
	goto Loop

S1:
    movlw   255
    movwf   PORTC
    movlw   255
    movwf   PORTD
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    movlw   0
    movwf   PORTC
    movlw   0
    movwf   PORTD
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
    call    Wait
	goto Loop

S2:
    movlw   255
    movwf   PORTC
    movlw   255
    movwf   PORTD
    call    Wait
    movlw   0
    movwf   PORTC
    movlw   0
    movwf   PORTD
    call    Wait
	goto Loop

S3:
    movlw   255
    movwf   PORTC
    movlw   255
    movwf   PORTD
	goto Loop
    
Wait:
    movlw 5000
	movwf CNT1

Loop1:
    movlw 100000000
    movwf CNT0


Loop0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    decfsz CNT0,F
    goto Loop0
    decfsz CNT1,F
    goto Loop1
    return


    end
