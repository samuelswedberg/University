// NeoPixel0.C
//
// This program drives a NeoPixel connected to RD0
// Drives the NeoPixel with 16 colors
//
//
// Global Variables

unsigned char PIXEL @ 0x000;

const unsigned char MSG0[20] = "HW5.C        ";
const unsigned char MSG1[20] = "                   ";

// Subroutine Declarationsb
#include <pic18.h>

// Subroutines
#include        "lcd_portd.c"
  
void NeoPixel_Display(unsigned char RED, 
		unsigned char GREEN, unsigned char BLUE)
{
   PIXEL = GREEN;	asm("  call Pixel_8 ");
   PIXEL = RED;		asm("  call Pixel_8 ");
   PIXEL = BLUE;	asm("  call Pixel_8 ");

   asm("    return");


#asm
Pixel_8:
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    call	Pixel_1
    return

Pixel_1:
	bsf		((c:3971)),0	; PORTD,0
    nop
	btfss   ((c:0000)),7
	bcf		((c:3971)),0
	rlncf   ((c:0000)),F
    nop
    nop
    bcf		((c:3971)),0
    return

#endasm
   }

char GetKey(void)
{
   int i;
   unsigned char RESULT;
   TRISC = 0xF8;
   RESULT = 0xFF;
   PORTC = 4;
   for (i=0; i<100; i++);
   if (RC6) RESULT = 1;
   if (RC5) RESULT = 4;
   if (RC4) RESULT = 7;
   if (RC3) RESULT = 10;
   PORTC = 2;
   for (i=0; i<100; i++);
   if (RC6) RESULT = 2;
   if (RC5) RESULT = 5;
   if (RC4) RESULT = 8;
   if (RC3) RESULT = 0;
   PORTC = 1;
   for (i=0; i<100; i++);
   if (RC6) RESULT = 3;
   if (RC5) RESULT = 6;
   if (RC4) RESULT = 9;
   if (RC3) RESULT = 11;
   if (RB0) RESULT = 12;
   if (RB1) RESULT = 13;
   if (RB2) RESULT = 14;
   if (RB3) RESULT = 15;
   if (RB4) RESULT = 16;
   PORTC = 0;
   return(RESULT);
}
      
char ReadKey(void)
{
   char X, Y;
   do {
      X = GetKey();
      }   while(X > 20);
   do {
      Y= GetKey();
      }   while(Y < 20);
   Wait_ms(100);  // debounce
   return(X);
   }
         
// Main Routine

void main(void)
{
   unsigned int i, N;
   unsigned char RED, GREEN, BLUE, TEMP, X;

   TRISA = 0;
   TRISB = 0xFF;
   TRISC = 0;
   TRISD = 0;
   TRISE = 0;
   TRISA = 0;
   PORTB = 0;
   PORTC = 0;
   PORTD = 0;
   PORTE = 0;
   ADCON1 = 0x0F;

   LCD_Init();                  // initialize the LCD
   TRISD0 = 0;

   LCD_Move(0,0);  for (i=0; i<20; i++) LCD_Write(MSG0[i]); 
   LCD_Move(1,0);  for (i=0; i<20; i++) LCD_Write(MSG1[i]); 
   Wait_ms(100); 

// Base Program

    RED = 0;
    GREEN = 0;
    BLUE = 0;
    while(1) {
        TEMP = ReadKey();
        if (TEMP < 10) X = (X*10) + TEMP;
        if (TEMP == 10) {
        RED = X;
        GREEN = X;
        BLUE = X;
        }
        if (TEMP == 11) {
        X = X / 10;
        }
        LCD_Move(1,5); LCD_Out(X, 5, 0);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        NeoPixel_Display(RED, GREEN, BLUE);
        Wait_ms(100);
    }

}
    