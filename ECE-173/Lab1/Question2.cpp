/* Name: Samuel Swedberg
ECE 173 Lab 1 Question 2
Due date: Jan 28th, 2022 at 5pm */
#include <stdio.h>

int main() {
    float fahrenheit, celsius; // Variables

    printf("Type Fahrenheit:"); // Asks user for fahrenheit
    scanf("%f", &fahrenheit);

    celsius = ((fahrenheit-32) * (5/9)); // F to C conversion formula

    printf("The temperature in Fahrenheit is: %f \n", fahrenheit); // Displays results to user
    printf("The temperature in Celsius is: %f \n", celsius);
    return 0;
}