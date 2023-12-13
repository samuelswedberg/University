
// Global Variables

const unsigned char MSG0[21] = "PWM.C               "; 
const unsigned char MSG1[21] = "PWM                 ";     

unsigned int PWM;
unsigned int TIME;

// Subroutine Declarations
#include <pic18.h>

// Subroutines
#include        "lcd_portd.c"

// Interrupt Service Routine
void interrupt IntServe(void)
{
   if (TMR0IF) {
      TMR0 = -10000;
      TMR1 = -PWM;
      TIME += 1;
      RA0 = 1;	
	  RA1 = 1;
      RA2 = 1;	
	  RA3 = 1;
      RA4 = 1;	
	  RA5 = 1;
	  RD0 = 1;
		RD1 = 1;
		RD2 = 1;
		RD3 = 1;
		RD4 = 1;
		RD5 = 1;
		RD6 = 1;

      TMR0IF = 0;
      }
   if (TMR1IF) {
      RA0 = 0;	
	  RA1 = 0;
      RA2 = 0;	
	  RA3 = 0;
      RA4 = 0;	
	  RA5 = 0;
	  RD0 = 0;
		RD1 = 0;
		RD2 = 0;
		RD3 = 0;
		RD4 = 0;
		RD5 = 0;
		RD6 = 0;
      TMR1IF = 0;
      }

   }
           
// Main Routine

void main(void)
{
   unsigned char i;
   unsigned int Hz;

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

// set up Timer0 for PS = 1
   T0CS = 0;
   T0CON = 0x88;
   TMR0ON = 1;
   TMR0IE = 1;
   TMR0IP = 1;
   PEIE = 1;
// set up Timer1 for PS = 1
   T1CON = 0x81;
   TMR1ON = 1;
   TMR1IE = 1;
   TMR1IP = 1;
   PEIE = 1;
   TMR1CS = 0;

// turn on all interrupts
   GIE = 1;
   TIME = 0;

   while(1) {
      if (RB0) PWM = 100;
      if (RB1) PWM = 1000;
      if (RB2) PWM = 2000;
      if (RB3) PWM = 3000;
      if (RB4) PWM = 4000;
      if (RB5) PWM = 5000;
      if (RB6) PWM = 6000;
      if (RB7) PWM = 9900;
 
      LCD_Move(0,7);  LCD_Out(TIME, 5, 3);
      LCD_Move(1,7);  LCD_Out(PWM, 5, 2);
        
      }      


   }
