; 1234.asm
; Display the numbers {1,2,3,4} on
; {PORTA, PORTB, PORTC, PORTD}
 
#include <p18f4620.inc> 

      org 0x800
      clrf TRISA
      clrf TRISB
      clrf TRISC
      clrf TRISD
      clrf TRISE
      movlw 0x0F
      movwf ADCON1

      movlw 255
      movwf PORTA
      movlw 255
      movwf PORTB
      movlw 255
      movwf PORTC
      movlw 255
      movwf PORTD
      movlw 3
      movwf PORTE

Loop:
      goto Loop
      end