/* Name: Samuel Swedberg
ECE 173 Lab 5 Question 2
Due date: March 11th, 2022 at 5pm */
#include <stdio.h>
void power(float base, int exponent) { // Power function
    int i, j;
    j = 1;
    for(i=0; i<exponent; i++) { // For loop for how many times to multiple
        j *= base;
    }
    printf("%d", j); // Displays output
}

int main() {
    float base;
    int exponent;

    printf("Enter base:"); // Input base
    scanf("%f", &base);
    printf("Enter exponent:"); // Input exponent
    scanf("%d", &exponent);

    power(base, exponent); // Calls power function
    return 0;
}

