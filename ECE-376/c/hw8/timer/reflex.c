// Global Variables
const unsigned char MSG0[21] = "Reflex Time ";
const unsigned char MSG1[21] = "Time = ";

unsigned int TIME;
// Subroutine Declarations
#include <pic18.h>
// Subroutines
#include "lcd_portd.c"
// High-priority service
void interrupt IntServe(void)
{
 if (TMR2IF) {
 RC0 = !RC0;
 TIME = TIME + 1;
 TMR2IF = 0;
 }
}
// Main Routine
void main(void)
{
 unsigned char i;
 unsigned int T0, T1, dT;
 unsigned int DELAY;
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
// set up Timer2 for 0.1ms
 T2CON = 0x05;
 PR2 = 249;
 TMR2ON = 1;
 TMR2IE = 1;
 TMR2IP = 1;
 PEIE = 1;
// turn on all interrupts
 GIE = 1;
 while(1) {
 PORTA = 0;
 PORTE = 0;
 while(!RB0);
 RE0 = 1;
 while(RB0) DELAY = (DELAY + 1)%4000;
 Wait_ms(DELAY + 3000);
 PORTA = 0xFF;
 TIME = 0;
 while(!RB0);
 dT = TIME;
 LCD_Move(1,8); LCD_Out(dT, 6, 4);
 Wait_ms(1000);
 }
 }