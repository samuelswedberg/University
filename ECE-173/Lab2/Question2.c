/* Name: Samuel Swedberg
ECE 173 Lab 2 Question 2
Due date: Feb 11th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int d1, d5, d10, d50, d100, input; // Variables

    printf("Enter amount to withdraw:"); // Retrieve input
    scanf("%d", &input);

    d100 = (input / 100); // Calculate
    d50 = (input % 100)/50;
    d10 = ((input % 100)%50)/10;
    d5 = (((input % 100)%50)%10)/5;
    d1 = ((((input % 100)%50)%10)%5)/1;

    printf("You will get (%d) 100s, (%d) 50s, (%d) 10s, (%d) 5s, and (%d) 1s.", d100, d50, d10, d5, d1); // Print results
    return 0;    
}
