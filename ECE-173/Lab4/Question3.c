/* Name: Samuel Swedberg
ECE 173 Lab 4 Question 3
Due date: March 5th, 2022 at 5pm 
External code taken from: https://www.geeksforgeeks.org/generating-random-number-range-c/ */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int run, minterm, maxterm; // Variables

    run = 0; // Boolean

    while(run == 0) // Runs while run = 0
    {
        printf("Please enter minterm: "); // Asks for input
        scanf("%d", &minterm);

        printf("Please enter maxterm: "); // Asks for input
        scanf("%d", &maxterm);

        if(minterm > maxterm) // Checks if minterm is greater than maxterm
        {
            printf("Error: Minterm is larger than maxterm\n"); // Sends error and asks again for input
        }
        else
        {
            run = 1; // Runs if >= 0
        }
    }

    if(run == 1) // Starts program once input criteria is met
    {
        srand(time(0)); // External code
        Random(minterm, maxterm); // Random number generation function
    }

    return 0;
}

void Random(int minterm, int maxterm) // Start external code
{
    int i;
    int count=1;
    for(i=0; i<count; i++)
    {
        int num = (rand() % (maxterm - minterm +1)) + minterm;
        printf("%d ",num);
    }
} // End external code