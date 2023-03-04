#include <stdio.h>

struct animal // Animal struct
{
    char name[30];
    int type;
} a={"OCELOT",18};

int main() {

    if((a.type>>4)&1==1) // Checks carnivore vs herbivore
        printf("%s is a carnivore.\n",a.name);
    else
        printf("%s is a herbivore.\n",a.name);

    if((a.type>>0)&1==1) // Checks canine
        printf("%s is a canine.\n",a.name);

    if((a.type>>1)&1==1) // Checks feline
        printf("%s is a feline.\n",a.name);

    if((a.type>>2)&1==1) // Checks catacean
        printf("%s is a catacean.\n",a.name);

    if((a.type>>3)&1==1) // Checks marsupial
        printf("%s is a marsupial.\n",a.name);
}