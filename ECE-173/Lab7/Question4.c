/* Name: Samuel Swedberg
ECE 173 Lab 7 Question 4
Due date: March 30th, 2022 at 5pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%(max - min+1)+min;
}

int main(){
	srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN
    int array[16];
    int i;
    int x;
    for(i=0;i<16;i++) // Fills array
    {
        int numb = random_gen(1,0);
        array[i]=numb;
        printf("%d",array[i]);
    }

    int dec=0,p=0;
    for(int i=15;i>0;i--) // Binary to decimal
    {
        dec = dec + pow(2,p)*array[i];
        p++;
    }
    if(array[0]==1)
    {
        dec = dec * -1;
    }
    printf("\nDecimal: %d",dec);
}