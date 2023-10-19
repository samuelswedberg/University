// Global Variables

const unsigned char MSG0[20] = "dice Point  Bank    ";
const unsigned char MSG1[20] = "                    ";


// Subroutine Declarations
#include <pic18.h>

// Subroutines
#include        "lcd_portd.c"

void Roll(char* d1, char* d2) {
   unsigned char n;
   while(!RB0);
   while(RB0) {
      n = (n + 1)%36;
      }
   *d1 = n/6 + 1;
   *d2 = n%6 + 1;
   }   

void Display(char d1, char d2, int Point, int Bank) {
   LCD_Move(1,0);  LCD_Out(d1, 1, 0);
   LCD_Move(1,2);  LCD_Out(d2, 1, 0);
   LCD_Move(1,6);  LCD_Out(Point, 2, 0);
   LCD_Move(1,12);  LCD_Out(Bank, 2, 0);
   }   
      
// Main Routine

void main(void)
{
   unsigned int i;
   unsigned int Bank, Point, Other;
   unsigned int Other;
   unsigned char DICE, d1, d2, Sum;

   TRISA = 0;
   TRISB = 0xFF;
   TRISC = 0;
   TRISD = 0;
   TRISE = 0;
   ADCON1 = 0x0F;
   Bank = 10;

   LCD_Init();

   LCD_Move(0,0);  for (i=0; i<20; i++) LCD_Write(MSG0[i]); 
   LCD_Move(1,0);  for (i=0; i<20; i++) LCD_Write(MSG1[i]); 
   Wait_ms(70); 

   Bank = 10;
   Other = 0;
   Point = 0;
   Display(0, 0, 0, Bank);
   while(1) 
   {
        Roll(&d1, &d2);
        Sum = d1 + d2;
        // Initial situation
        if(Other == 0)
        {
            if(Sum == 7 || Sum == 11) // Win
            {
                Bank += 1;
            }
            else if(Sum == 2 || Sum == 3 || Sum == 12) // Lose
            {
                Bank -= 1;
            }
            else // Other situation
            {
                Other = 1;
                Point = Sum;
            }
            Display(d1, d2, Sum, Bank);
        }
        // Different number situation
        else
        {
            if(Sum == 7 || Sum == 11) // Lose
            {
                Bank -= 1;
            }
            else if(Sum == Point) // Win & back to initial situation
            {
                Bank += 1;
                Other = 0;
            }
            Display(d1, d2, Point, Bank);
        }
    }
  }