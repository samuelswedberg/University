X0 equ 0
X1 equ 1
X2 equ 2
; Start of program

#include <p18f4620.inc>

    org 0x800
    movlw   0xFF
    movwf   TRISB
    clrf    TRISC

L1:
    btfsc   PORTB, 0
    goto    L2
    goto    L1

L2:
    movff   X1, X2
    movf    X0
    movwf   X1
    goto    L3

L3:
    btfsc   PORTB,0
    goto    L4
    goto    L3

L4:
    movlw   1
    CPFSEQ  X0
    goto    L1
    movlw   2
    CPFSEQ  X1
    goto    L1
    movlw   4
    CPFSEQ  X2
    goto    L1
    goto    L5

L5:
    movlw   255
    movwf   PORTC
    goto    L6

L6:
    goto    L7

L7:
    movlw   0
    movwf   PORTC
    movwf   X0
    movwf   X1
    movwf   X2
    