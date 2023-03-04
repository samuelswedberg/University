/* Name: Samuel Swedberg
ECE 173 Lab 4 Question 1
Due date: March 5th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int terms, i, j, numerator, denominator, o_n, o_d,  run; // Variables

    run = 0; // Boolean

    while(run == 0) // Runs while run = 0
    {
        printf("Please enter a positive number of terms: "); // Asks for input
        scanf("%d", &terms);
        if(terms >= 0) // Checks if term is negative
        {
            run = 1; // Runs if >= 0
        }
        else
        {
            printf("Error: Negative value\n"); // Sends error and asks again for input
        }
    }
    if(run == 1){ // Runs once term criteria is met
        o_n = 0;
        o_d = 0;

        for(i=1; i<=terms; i++) // Loops for each term
        {
            numerator = i;
            denominator = 1;
            for(j=1; j<=i; j++) // Factorial each term
            {
                denominator *= j;
            }
            o_n += numerator;
            o_d += denominator;
        }
        printf("%d / %d\n",o_n,o_d); // Prints each result
    }

    return 0;
}