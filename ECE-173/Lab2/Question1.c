/* Name: Samuel Swedberg
ECE 173 Lab 2 Question 1
Due date: Feb 11th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int number, d1, d2, d3, d4, d5, d6; // Variables

    printf("Enter 6 digit number (no decimals):"); // Retrieve input
    scanf("%d", &number);

    d1 = ((number / 100000 % 10)+1)%10; // Calculate
    d2 = ((number / 10000 % 10)+1)%10;
    d3 = ((number / 1000 % 10)+1)%10;
    d4 = ((number / 100 % 10)+1)%10;
    d5 = ((number / 10 % 10)+1)%10;
    d6 = ((number % 10)+1)%10;

    printf("The new number is: %d%d%d%d%d%d", d1, d2, d3, d4, d5, d6); // Print results to user
    return 0;
}
