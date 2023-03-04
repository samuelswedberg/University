/* Name: Samuel Swedberg
ECE 173 Lab 4 Question 4
Due date: March 5th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int i, j, t, run; // Variables 
    float x, o, eq, sum;
    run = 0; // Boolean

    while(run == 0) // Runs while run = 0
    {
        printf("Please enter value: "); // Asks for input
        scanf("%f", &x);
        
        printf("Please enter number of terms: "); // Asks for input
        scanf("%d", &t);
        
        if(x == 1) // Checks if x=1
        {
            printf("Error: Function not defined for x=1\n"); // Sends error and asks again for input
        }
        else if(t < 1)
        {
            printf("Error: Term must be greater than 0\n"); // Sends error and asks again for input
        }
        else
        {
            run = 1; // Runs if >= 0
        }
    }

    if(run == 1) // Runs once input criteria is met
    {   sum = 0;
        for(i=0; i<t; i++) // Loops for # of terms
        {
            o = 1;
            for(j=0; j<=i; j++)
            {
                eq = (x/(x-1));
                o *= eq;
            }
            o *= 0.5;
            sum += o;
        }
        printf("Output: %f",sum); // Prints output
    }

    return 0;
}