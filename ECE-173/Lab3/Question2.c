/* Name: Samuel Swedberg
ECE 173 Lab 3 Question 2
Due date: Feb 23th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int input, i, o; // Variables

    printf("Enter a value:"); // Input
    scanf("%d", &input);
    for(i=0; i <= 20; i++) { // Loops 20 times
        o = i * input; // Calculates input * i
        printf("%d * %d = %d\n",i,input,o); // Prints output
    }    
    return 0;
}