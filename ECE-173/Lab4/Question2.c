/* Name: Samuel Swedberg
ECE 173 Lab 4 Question 2
Due date: March 5th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int i, j; // Variables

    for(i=4; i>=1; i--) // Loop that determines how many terms are in each line
        {
            for(j=1; j<=i; j++) // Loops for whatever i is
            {
                printf("%d",j); // Prints line of variables
            }

            printf("\n"); // New line
        }

    return 0;
}