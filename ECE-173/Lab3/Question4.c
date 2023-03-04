/* Name: Samuel Swedberg
ECE 173 Lab 3 Question 4
Due date: Feb 23th, 2022 at 5pm */
#include <stdio.h>

int main() {
    float x, y, z; // Variables

    for(y=1; y < 6; y = y + 0.5) { // Loops y values 
       for(z=3.5; z < 12; z = z + 0.25) { // Loops z values
            x = y*y + (y - (0.93)*z); // Calculates
            printf("x=%f; y=%f; z=%f\n",x,y,z); //Prints output
       }
    }
    return 0;
}