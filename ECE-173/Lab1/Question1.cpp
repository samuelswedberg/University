/* Name: Samuel Swedberg
ECE 173 Lab 1 Question 1
Due date: Jan 28th, 2022 at 5pm */
#include <stdio.h>

int main() {
    float length, width, radius, rectarea, perimeter, circlearea, circumference; // Variables

    printf("Type length:"); // Asks user for length
    scanf("%f", &length);

    printf("Type width:"); // Asks user for width
    scanf("%f", &width);

    printf("Type radius:"); // Asks user for radius
    scanf("%f", &radius);

    perimeter = (2 * (length + width)); // Perimeter equation
    rectarea = (length * width); // Area equation for the rectangle

    circumference = (2 * 3.14 * radius); // Circumference equation
    circlearea = (3.14 * radius * radius); // Area equation for the circle

    printf("The area of the rectangle is: %f \n", rectarea); // Prints each result
    printf("The perimeter of the rectangle is: %f \n", perimeter);
    printf("The area of the circle is: %f \n", circlearea);
    printf("The circumference of the circle is: %f \n", circumference);
    return 0;
}