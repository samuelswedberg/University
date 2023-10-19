X0      equ 0
X1      equ 1
X2      equ 2
CNT0	equ	1
CNT1	equ	2
CNT2	equ	3

; Start of program

#include <p18f4620.inc>

    org     0x800
    movlw   0xFF
    movwf   TRISB
    clrf    TRISC
    clrf    PORTC

L1:
    movlw   0 ; Set W to 0
    cpfseq  PORTB ; Skip if B = W
    goto    L2
    goto    L1

L2:
    movff X1, X2 ; X1 -> X2
    movff X0, X1 ; X0 -> X1
    movff PORTB, X0 ; B -> X0
    goto    L3

L3:
    movlw   0 ; Set W to 0
    cpfseq  PORTB ; Skip if B = W 
    goto    L3
    goto    L4

L4:
    movlw   1 ; Set W to 1
    cpfseq  X0 ; Skip if X0 = W
    goto    L1
    movlw   2 ; Set W to 2
    cpfseq  X1 ; Skip if X1 = W
    goto    L1
    movlw   4 ; Set W to 4
    cpfseq  X2 ; Skip if X2 = W
    goto    L1 
    goto    L5

L5:
    movlw   255
    movwf   PORTC
    goto    L6

L6:
    call    Wait
    goto    L7

L7:
    movlw   0
    movwf   PORTC
    movwf   X0
    movwf   X1
    movwf   X2
    goto    L1


Wait:
    movwf CNT2
W2:
    movlw 50
    movwf CNT1
W1:
    movlw 100
    movwf CNT0
W0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    decfsz CNT0,F
    goto W0
    decfsz CNT1,F
    goto W1
    decfsz CNT2,F
    goto W2
    return


    end