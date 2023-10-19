// Subroutine Declarations
#include <pic18.h>

void Beep(void) {
 unsigned int i, j;
 for(i=0; i<800; i++) {
 RC0 = !RC0;
 for(j=0; j<1000; j++);
 }
}