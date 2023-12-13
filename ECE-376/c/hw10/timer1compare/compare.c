// Timer1 Compare.C
//
// Output a square wave with a frequency of 349.23Hz
// on RC0 using Timer1 Compare interrupts
#include <pic18.h>
// Global Variables
unsigned long int TIME;
unsigned int TIME0, TIME1, N1, N2;
const unsigned char MSG0[21] = "mm: ";
const unsigned char MSG1[21] = "Hz: ";
// Interrupt Service Routine
void interrupt IntServe(void)
{
 if (TMR0IF) { // 5ms, PS = 8
 TMR0 = -6250;
 RC0 = !RC0;
 TMR0IF = 0;
 }
 if (TMR1IF) {
 TIME = TIME + 0x10000;
 TMR1IF = 0;
 }
 if (CCP1IF) {
 if (CCP1CON == 0x05) { // rising edge
 TIME0 = TIME + CCPR1;
 CCP1CON = 0x04;
 }
 else {
 TIME1 = TIME + CCPR1;
 N1 = TIME1 - TIME0;
 CCP1CON = 0x05;
 }
 CCP1IF = 0;
 }
 if (CCP2IF) {
 CCP2CON ^= 1;
 CCPR2 += N2;
 CCP2IF = 0;
 }
 }
// Subroutines
#include "lcd_portd.c"
// Main Routine
void main(void)
{
 unsigned int mm;
 unsigned int i, X, Hz;
 TRISA = 0;
 TRISB = 0xFF;
 TRISC = 0x04; // capture every rising edge
 TRISD = 0;
 ADCON1 = 0x0F;
 LCD_Init();
 LCD_Move(0,0); for (i=0; i<20; i++) LCD_Write(MSG0[i]);
 LCD_Move(1,0); for (i=0; i<20; i++) LCD_Write(MSG1[i]);
 Wait_ms(100);
 TIME = 0;
// set up Timer0 for PS = 8
 T0CS = 0;
 T0CON = 0x82;
 TMR0ON = 1;
 TMR0IE = 1;
 TMR0IP = 1;
 PEIE = 1;
// set up Timer1 for PS = 1
 TMR1CS = 0;
 T1CON = 0x81;
 TMR1ON = 1;
 TMR1IE = 1;
 TMR1IP = 1;
 PEIE = 1;
// set up Capture1 for rising edges
 TRISC2 = 1;
 CCP1CON = 0x05;
 CCP1IE = 1;
 PEIE = 1;
// set up Compare2
 TRISC1 = 0;
 CCP2CON = 0x08;
 CCP2IE = 1;
 PEIE = 1;
// turn on all interrupts
 GIE = 1;

 while(1) {
 mm = N1 * 1.715; // units = 10um
 N2 = 47779 - 1.68*N1;
 Hz = 5000000.0 / N2;
 LCD_Move(0,5); LCD_Out(mm, 7, 2);
 LCD_Move(1,5); LCD_Out(Hz, 4, 0);
 }
 }