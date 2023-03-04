/* Name: Samuel Swedberg
ECE 173 Lab 7 Question 3
Due date: March 30th, 2022 at 5pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int Octal(int n) // Convert to octal function
{
    int octalx = 0, i = 1;

    while (n != 0)
    {
        octalx += (n % 8) * i;
        n /= 8;
        i *= 10;
    }

    return octalx;
}
void Binary(int n) // Convert to binary function
{ int a[16],i;
    for(i=0;n>0;i++)  
    {  
    a[i]=n%2;  
    n=n/2;  
    }
    printf("\nBinary:"); 
    for(i=i-1;i>=0;i--)  
    {  
    printf("%d",a[i]);  
    }  
}

void Hexadecimal(int n) // Convert to hexadecimal function
{
    char hx[100];
    int r,j,i;
        while (n != 0)

    {

        r = n % 16;

        if (r < 10)

            hx[j++] = 48 + r;

        else

            hx[j++] = 55 + r;

        n = n / 16;

    }


    printf("\nHexadecimal:");
    for (i = j; i >= 0; i--)

            printf("%c",hx[i]);
      
}
int main(){
    int n;
    printf("Enter a number between 0 and 65535: "); //Input
    scanf("%d",&n);  
    
    Binary(n);
    printf("\nOctal: %d", Octal(n));  
    Hexadecimal( n);

    return 0;
}

