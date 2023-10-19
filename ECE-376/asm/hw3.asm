; Samuel Swedberg ECE376 Homework 3

BUTTON	equ	0

#include <p18f4620.inc>

	org 0x800
	call Init
Loop:
	movf	BUTTON,W
	btfsc	PORTB,0	; if RB0 pressed
	call    S0
	btfsc	PORTB,1	; if RB1 pressed
	call    S2
	btfsc	PORTB,2	; if RB2 pressed
	call    S3
	btfsc	PORTB,3	; if RB3 pressed
	call    S3

	goto	Loop


Init:
	movlw	0xFF
	movwf	TRISB
	clrf	TRISC
    clrf	TRISD
	movlw	0x0F
	movwf	ADCON1
	clrf	BUTTON
	return

	end

S0:
    movlw   0
    movwf PORTC
    movlw   0
    movwf PORTD

S1:
    movlw   255
    movwf PORTC
    movlw   255
    movwf PORTD

S2:

S3: