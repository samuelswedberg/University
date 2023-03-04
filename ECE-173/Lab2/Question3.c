/* Name: Samuel Swedberg
ECE 173 Lab 2 Question 3
Due date: Feb 11th, 2022 at 5pm */
#include <stdio.h>

int main() {
    char ch; // Variable as a char

    printf("Enter a character:"); // Retrieves input
    scanf("%c", &ch);

    int input = ch; // Converts char to int

    //printf("ASCII value: %d\n", input); // Prints ASCII Value

    if(65 <= input && input <= 90){ // Checks if A-Z
        printf("Upper case letter");
    }
    if(97 <= input && input <= 122){ // Checks if a-z
        printf("Lower case letter");
    }
    if(48 <= input && input <= 57){ // Checks if 0-9
        printf("Digit");
    }
    if(0 <= input && input <= 47){ // Checks if special
        printf("Special symbol");
    }
    if(58 <= input && input <= 64){ // Checks if special
        printf("Special symbol");
    }
    if(91 <= input && input <= 96){ // Checks if special
        printf("Special symbol");
    }
    if(123 <= input && input <= 127){ // Checks if special
        printf("Special symbol");
    }
}
