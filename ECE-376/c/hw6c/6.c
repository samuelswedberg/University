// Global Variables
const unsigned char MSG0[21] = "Right ";
const unsigned char MSG1[21] = "Wrong ";
// Subroutine Declarations
#include <pic18.h>
// Subroutines
#include "lcd_portd.c"

// Main Routine
void main(void)
{
 unsigned int i, j;
 int GUESS, X, RIGHT, WRONG;

 TRISA = 0;
 TRISB = 0xFF;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;
 TRISA = 0;
 ADCON1 = 15;
 PORTA = 0;
 LCD_Init(); // initialize the LCD
 LCD_Move(0,0); for (i=0; i<20; i++) LCD_Write(MSG0[i]);
 LCD_Move(1,0); for (i=0; i<20; i++) LCD_Write(MSG1[i]);
 X = 0;
 RIGHT = 0;
 WRONG = 0;
 while(1) {
 while(PORTB == 0);
 while(PORTB) {
 if(RB0) GUESS = 0;
 if(RB1) GUESS = 1;
 if(RB2) GUESS = 2;
 if(RB3) GUESS = 3;
 X = (X + 1)%4;
 }
 if(GUESS == X) RIGHT += 1;
 else WRONG += 1;

 LCD_Move(0,8); LCD_Out(RIGHT, 3, 0);
 LCD_Move(1,8); LCD_Out(WRONG, 3, 0);
 }
}