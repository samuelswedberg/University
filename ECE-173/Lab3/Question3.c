/* Name: Samuel Swedberg
ECE 173 Lab 3 Question 3
Due date: Feb 23th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int i, value1, value2, value3, result, run; // Variables
    run = 1; // Allows while to run
    
    while(run == 1){ // Will run until only positive values are entered.
        printf("Enter positive value:");
        scanf("%d", &value1);
        printf("Enter positive value:");
        scanf("%d", &value2);

        if(value2 < 0) { // Checks if value2 is positive
            printf("Values must be positive. Please reenter values.\n");
        } else if(value2 > 0){ // Continues if values are positive
            run = 0;
        }
    }

    value3 = value1; // Stores another instance of value1
    if(run == 0) { // Runs only if the while loop is finished
        for(i = 1; i < value2; i++) { // Loops value2 times
        value1 = value1 * value3; // Calculate
        }
        printf("%d\n",value1); // Prints output
    }
    return 0;
}