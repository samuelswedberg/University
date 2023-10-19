// Dice.C
//
// This program generates a random number
// from 1..6 and sends it to the serial port
// at 9600 baud

// Global Variables

const unsigned char MSG0[21] = "Six-Sided Die       "; 

 // Subroutine Declarations
#include <pic18.h>

// Subroutines
#include        "lcd_portd.c"
   
// Main Routine

void main(void)
{
   unsigned int DIE;
   unsigned int i, j, X;

   TRISA = 0;
   TRISB = 0xFF;
   TRISC = 0;
   ADCON1 = 0x0F;

   LCD_Init();                  // initialize the LCD
   LCD_Move(0,0);  for (i=0; i<20; i++) LCD_Write(MSG0[i]);


// Initialize the A/D port
   TRISA = 0xFF;
   TRISE = 0x0F;
   ADCON2 = 0x85;
   ADCON1 = 0x07;
   ADCON0 = 0x01;
   i = 0;

// Initialize Serial Port to 9600 baud
   TRISC = TRISC | 0xC0;
   TXIE = 0;
   RCIE = 0;
   BRGH = 0;
   BRG16 = 1;
   SYNC = 0;
   SPBRG = 255;
   TXSTA = 0x22;
   RCSTA = 0x90;

while(1) {
 while(!RB0);
 while(RB0) {
 DIE = (DIE + 1) % 6;
 X = (X + 1) % 11;
 }
 DIE = DIE + 1;
 if(X == 0) DIE = 6;
 LCD_Move(1,0); LCD_Out(DIE, 1, 0);
 SCI_Out(DIE, 1, 0);
 SCI_CRLF();
 }
   }
