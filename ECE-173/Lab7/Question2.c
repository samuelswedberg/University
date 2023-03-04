/* Name: Samuel Swedberg
ECE 173 Lab 7 Question 2
Due date: March 30th, 2022 at 5pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%max + min-30;
}

int main(){
	srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN
	int array[75];
    int i;
    for(i=0;i<75;i++) // Fills array 
    {
        int numb = random_gen(60,0);
        array[i]=numb;
        printf("%d ",array[i]);
    }
    
    int pos = 0, neg = 0, even = 0, odd = 0;
    for(i=0;i<75;i++) // Scans array for #
    {
        if(array[i] >= 0) // Checks if +
        {
        pos++;
        }
        if(array[i] < 0) // Checks if -
        {
        neg++;
        }
        if(array[i] % 2 == 0) // Checks if even
        {
        even++;
        }
        if(array[i] % 2 != 0) // Checks if odd
        {
        odd++;
        }
    }
    printf("\nThere are %d positive numbers, %d negative numbers, %d even numbers, and %d odd numbers.\n", pos, neg, even, odd); // Output
}