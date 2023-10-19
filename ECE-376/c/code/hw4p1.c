// Subroutine Declarations
#include <pic18.h>

unsigned char i
while(1) {
 i = (i + 1) % 16;
 if(i == 0) PORTC += 1;
 }