/* Name: Samuel Swedberg
ECE 173 Lab 1 Question 3
Due date: Jan 28th, 2022 at 5pm */
#include <stdio.h>

int main() {
    float course1, course2, course3, course4, course5, coursetotal; // Variables

    printf("Enter course 1 grade:"); // Asks user for grades for each course
    scanf("%f", &course1);

    printf("Enter course 2 grade:");
    scanf("%f", &course2);

    printf("Enter course 3 grade:");
    scanf("%f", &course3);

    printf("Enter course 4 grade:");
    scanf("%f", &course4);

    printf("Enter course 5 grade:");
    scanf("%f", &course5);

    coursetotal = ((course1 + course2 + course3 + course4 + course5)/5); // Averages total for all courses

    printf("The overall percentage obtained is: %f \n", coursetotal); // Displays result to user
    return 0;
}