// Global Variables
const unsigned char MSG0[21] = "CSGO                ";
const unsigned char MSG1[21] = " ";
const unsigned int BEEP = 1182; // 4231 Hz
unsigned int N0, N1, N3, DELAY, PLAY;
unsigned char PIXEL @ 0x000;
// Subroutine Declarations
#include <pic18.h>
// Subroutines
#include "lcd_portd.c"
void interrupt IntServe(void)
{
    if (TMR0IF) {
        TMR0 = -N0 + 40;
        if(PLAY) {
            if(DELAY > 50) RA0 = !RA0;
            else RA0 = 0;
            }
        else RA0 = 0;
        TMR0IF = 0;
        }
    if (TMR2IF) {
        RA1 = !RA1;
        if(DELAY) DELAY -= 1;
        TMR2IF = 0;
        }
 }
void PlayNote(unsigned int N, unsigned int D)
{
 if(N == 0) {
    PLAY = 0;
    DELAY = D;
    while(DELAY);
 }
 else {
    PLAY = 1;
    N0 = N;
    DELAY = D;
    while(DELAY);
 }
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
   //Wait_ms(100);  // debounce
   return(X);
   }
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

// Main Routine
void main(void)
{
 unsigned char i, stage;
 unsigned int boom, countdown;
 unsigned int bombCode = 7355608;
 TRISA = 0;
 TRISB = 0xFF;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;
 ADCON1 = 0x0F;
 LCD_Init(); // initialize the LCD
 LCD_Move(0,0); for (i=0; i<20; i++) LCD_Write(MSG0[i]);
 LCD_Move(1,0); for (i=0; i<20; i++) LCD_Write(MSG1[i]);
 Wait_ms(100);
// set up Timer0 for PS = 1
 T0CS = 0;
 T0CON = 0x88;
 TMR0ON = 1;
 TMR0IE = 1;
 TMR0IP = 1;
 PEIE = 1;
// set up Timer2 for 1ms
 T2CON = 0x4D;
 PR2 = 249;
 TMR2ON = 1;
 TMR2IE = 1;
 TMR2IP = 1;
 PEIE = 1;
// turn on all interrupts
 GIE = 1;
 countdown = 0;
 boom = 0;
 stage = 1;
   unsigned int j, k;
   unsigned long X, Y, Z, T, TEMP;

   TRISA = 0;
   TRISB = 0xFF;
   TRISC = 0xF8;
   TRISD = 0;
   TRISE = 0;
   TRISA = 0;
   ADCON1 = 15;

   LCD_Init();                  // initialize the LCD

   LCD_Move(0,0);  for (i=0; i<20; i++) LCD_Write(MSG0[i]);
   Wait_ms(2000);
   LCD_Inst(1);

   X = 0;
   Y = 0;
   Z = 0;
   T = 0;

   LCD_Move(0,0);  LCD_Write('Y');
   LCD_Move(1,0);  LCD_Write('X');
 while(1) {
	TEMP = ReadKey();
for(int w = 0; w<8;w++)	NeoPixel_Display(0,0,0);
      if (TEMP < 10) X = (X*10) + TEMP;
 
      if (TEMP == 10) {
         T = Z;
         Z = Y;
         Y = X;
         X = 0;
         }   
      if (TEMP == 11) {
         X = X/10;
         } 
 
      LCD_Move(1,7);  LCD_Out(X, 7, 0);
      LCD_Move(0,7);  LCD_Out(Y, 7, 0);
      
   if(Y == 7355608)countdown = 1;
    if(countdown == 1)
    {
        if(stage == 1)
        {
            for(int i=0; i<30; i++)
            { 
				
				NeoPixel_Display(10,0,0);
                PlayNote(BEEP, 200);
                NeoPixel_Display(0,0,0);
				Wait_ms(800);
                if(i == 29)
                {
                    stage = 2;
                }
				
            }
        }
        if(stage == 2)
        {
            for(int i=0; i<10; i++)
            {
				
				NeoPixel_Display(10,0,0);
                PlayNote(BEEP, 100);
				NeoPixel_Display(0,0,0);
                Wait_ms(550);
				
                if(i == 9)
                {
                    stage = 3;
                }
            }
        }
        if(stage == 3)
        {
            for(int i=0; i<37;i++)
            {
				NeoPixel_Display(10,0,0);
                PlayNote(BEEP, 100);
				NeoPixel_Display(0,0,0);
                Wait_ms(55);
                if(i == 36){
	                NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
					NeoPixel_Display(10,0,0);
            }
        }
    }
}   
 i = i + 1;
}
}
