/* Name: Samuel Swedberg
ECE 173 Lab 2 Question 4
Due date: Feb 11th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int g1, g2, g3, g4, g5, avg; // Variables
    
    printf("Enter grade 1:"); // Asks user for grades
    scanf("%d", &g1);

    printf("Enter grade 2:");
    scanf("%d", &g2);

    printf("Enter grade 3:");
    scanf("%d", &g3);

    printf("Enter grade 4:");
    scanf("%d", &g4);

    printf("Enter grade 5:");
    scanf("%d", &g5);

    avg = (g1+g2+g3+g4+g5)/5;
    //printf("%d", avg);

    if(avg >= 60){ // Checks if average is greater than 60
        printf("Your average is in divison 1."); 
    }
    if(50 <= avg && avg < 60){ // Checks if average is between 50 and 60
        printf("Your average is in division 2.");
    }
    if(40 <= avg && avg < 50){ // Checks if average is in between 40 and 50
        printf("Your average is in division 3.");
    }
    if(avg < 40){ // Checks if average is below 40
        printf("Your average is in division 4.");
    }
    return 0;
}
