// Global Variables
const unsigned char MSG0[21] = "Combination Lock ";
const unsigned char TABLE[4] = {1, 2, 4, 8};
// Subroutines
#include <pic18.h>
#include "lcd_portd.c"

unsigned int A2D_Read(unsigned char c)
{
 unsigned int result;
 unsigned char i;
 c = c & 0x0F;
 ADCON0 = (c << 2) + 0x01; // set Channel Select
 for (i=0; i<20; i++); // wait 2.4us (approx)
 GODONE = 1; // start the A/D conversion
 while(GODONE); // wait until complete (approx 8us)
 return(ADRES);
 }
// Main Routine
void main(void)
{
    int A2D;
    int X, Y, Z, T;
    int STEP;
    unsigned int i, j;
    TRISA = 0;
    TRISB = 0xFF;
    TRISC = 0;
    TRISD = 0;
    TRISE = 0;
    ADCON1 = 0x0F;
    LCD_Init(); // initialize the LCD
    LCD_Move(0,0); for (i=0; i<20; i++) LCD_Write(MSG0[i]);
    Wait_ms(500);
    // Initialize the A/D port
    TRISA = 0xFF;
    TRISE = 0x0F;
    ADCON2 = 0x85;
    ADCON1 = 0x07;
    ADCON0 = 0x01;
    i = 0;
    X = 0;
    Y = 0;
    Z = 0;
    T = 0;
    while(1) {
    A2D = A2D_Read(0) / 51.15 + 1;
    if(RB0) {
        T = Z;
        Z = Y;
        Y = X;
        X = A2D;
        while(RB0);
    }
    if(RB1) {
    if( (X == 1)*(Y == 2)*(Z == 3) ) {
        for(i=0; i<100; i++) {
            STEP = STEP + 1;
            PORTC = TABLE[STEP % 4];
            Wait_ms(10);
        }
            Wait_ms(2000);
            for(i=0; i<100; i++) {
                STEP = STEP - 1;
                PORTC = TABLE[STEP % 4];
                Wait_ms(10);
            }
        }
        X = 0;
        Y = 0;
        Z = 0;
    }
        LCD_Move(1,0); LCD_Out(A2D, 2, 0);
        LCD_Move(1,4); LCD_Out(X, 2, 0);
        LCD_Move(1,8); LCD_Out(Y, 2, 0);
        LCD_Move(1,12); LCD_Out(Z, 2, 0);
    }
 }