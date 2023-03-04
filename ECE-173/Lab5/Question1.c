/* Name: Samuel Swedberg
ECE 173 Lab 5 Question 1
Due date: March 11th, 2022 at 5pm */
#include <stdio.h>
void rounder(float a) { // Rounding function
    int b;
    b = (int)(a+0.5); // Adds 0.5 since converting float to int automatically drops it down so by adding 0.5 it'll round correctly
    printf("%d", b);
    return;
}

int main() {
    float a;
    printf("Enter floating value:"); // Input
    scanf("%f", &a);

    rounder(a); // Calling rounding function

    return 0;
}

