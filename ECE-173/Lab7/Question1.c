/* Name: Samuel Swedberg
ECE 173 Lab 7 Question 1
Due date: March 30th, 2022 at 5pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%max + min;
}

int main(){
	srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN
	int array[50];
    int i;
    int x;
    for(i=0;i<50;i++) // Fills array
    {
        int numb = random_gen(50,1);
        array[i]=numb;
    }
    printf("What number do you wanna search:\n"); // User input
    scanf("%d", &x);
    
    int bool;
    int found;
    for(i=0;i<40;i++) // Scans array for #
    {
        if(array[i]==x)
        {
        bool=1;
        int pos=i;
        printf("Number %d is at %d\n", x, pos);
        found++;
        }
    }
    if(bool == 0) // # not found
    {
    printf("The number was not found\n");
    }
    else // # found
    {
    printf("The number is found %d times\n", found);
    }
}