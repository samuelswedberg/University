// Global Variables
const unsigned char MSG0[21] = "100us Timer ";
const unsigned char MSG1[21] = "Time: ";

unsigned int TIME;
// Subroutine Declarations
#include <pic18.h>
// Subroutines
#include "lcd_portd.c"

// High-priority service
void interrupt IntServe(void)
{
 if (TMR2IF) {
 RA1 = !RA1;
 if(TIME) TIME -= 1;
 else {
 if(RB0) TIME = 5000;
 if(RB1) TIME = 10000;
 if(RB2) TIME = 15000;
 if(RB3) TIME = 20000;
 }
 TMR2IF = 0;
 }
 }
// Main Routine
void main(void)
{
 unsigned char i;
 unsigned int j;
 TRISA = 0;
 TRISB = 0xFF;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;
 ADCON1 = 0x0F;
 TIME = 0;
 LCD_Init(); // initialize the LCD
 LCD_Move(0,0); for (i=0; i<20; i++) LCD_Write(MSG0[i]);
 LCD_Move(1,0); for (i=0; i<20; i++) LCD_Write(MSG1[i]);
 Wait_ms(100);
// set up Timer2 for 1ms
 T2CON = 0x6F;
 PR2 = 127;
 TMR2ON = 1;
 TMR2IE = 1;
 TMR2IP = 1;
 PEIE = 1;
// turn on all interrupts
GIE = 1;
 while(1) {
 LCD_Move(1, 8); LCD_Out(TIME, 5, 3);
 }
 }