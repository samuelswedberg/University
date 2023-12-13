// Measure time to 100ns

// Global Variables

const unsigned char MSG0[21] = "T0_Time.C           "; 
const unsigned char MSG1[21] = "                    ";     

unsigned long int TIME;

const unsigned int E4 = 15168; // 329.63 HZ
const unsigned int C4 = 19111; // 261.63 HZ
const unsigned int G4 = 12755; // 392 HZ
const unsigned int G3 = 25510; // 196 HZ

unsigned int PLAY, DURATION;

// Subroutine Declarations
#include <pic18.h>

// Subroutines
#include        "lcd_portd.c"

void interrupt IntServe(void)
{
 if (TMR1IF) {
 TMR1 = -PLAY;
 if(PLAY) RC0 = !RC0;
 else RC0 = 0;
 TMR1IF = 0;
 }
 if (TMR2IF) {
 if(DURATION) DURATION -= 1;
 TMR2IF = 0;
 }
 }

         
// Main Routine

void main(void)
{
   unsigned char i;
   unsigned long int TIME1, TIME2;

   TRISA = 0;
   TRISB = 0xFF;
   TRISC = 0;
   TRISD = 0;
   TRISE = 0;
   ADCON1 = 0x0F;

   LCD_Init();                  // initialize the LCD

   LCD_Move(0,0);  for (i=0; i<20; i++) LCD_Write(MSG0[i]);
   LCD_Move(1,0);  for (i=0; i<20; i++) LCD_Write(MSG1[i]);

   Wait_ms(100);


// set up Timer1 for PS = 1
   TMR1CS = 0;
   T1CON = 0x81;
   TMR1ON = 1;
   TMR1IE = 1;
   TMR1IP = 1;
   PEIE = 1;
// set up Timer2 for 1ms
   T2CON = 0x4D;
   PR2   = 238;
   TMR2ON = 1;
   TMR2IE = 1;
   TMR2IP = 1;
   PEIE = 1;
// turn on all interrupts
   GIE = 1;

   TIME = 0;


   while(1) {
		if(RB0){
DURATION = 200;
PLAY = E4;
while(DURATION);
DURATION = 200;
PLAY = 0;
while(DURATION);

DURATION = 200;
PLAY = E4;
while(DURATION);
DURATION = 200;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = E4;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);

DURATION = 200;
PLAY = 0;
while(DURATION);
DURATION = 200;
PLAY = 0;
while(DURATION);

DURATION = 200;
PLAY = C4;
while(DURATION);
DURATION = 200;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = E4;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = G4;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = 0;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = G3;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);

DURATION = 400;
PLAY = 0;
while(DURATION);
DURATION = 400;
PLAY = 0;
while(DURATION);
		}
      }    
   }