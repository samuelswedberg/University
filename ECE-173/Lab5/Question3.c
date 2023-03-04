/* Name: Samuel Swedberg
ECE 173 Lab 5 Question 3
Due date: March 11th, 2022 at 5pm */
#include <stdio.h>
int factorial(int n) { // Factorial function
    int i, fact = 1;
    for(i=1; i<=n; i++) // Factorial each term
        {
            fact *= i;
        }
    return fact;
}

int prime(int n) { // Prime function
    int i, prime = 0;
    if(n == 0 || n == 1) { // Sets prime as true if n = 0 or 1
        prime = 1;
    }

    for(i=2; i <= n / 2; i++) { // For loop to determine if n is divisible without remainder
        if(n % i == 0) {
            prime = 1;
            break;
        }
    }

    if(prime == 0) { // Outputs whether prime or not
        printf("%d is a prime number.\n", n);
    } else {
        printf("%d is a not prime number.\n", n);
    }
}

int main() {
    int n, run2;
    int run1 = 1; // Boolean

    while(run1 == 1) { // While loop to get input value
        printf("Enter number:");
        scanf("%d", &n);
        if (n < 0) { // Checks if number is negative
            printf("Error: Factorial of negative number is undefined. Please re-enter number.\n");
        }
        else {
            run1 = 0;
            run2 = 1;
        }
    }

    while(run2 == 1) { // While loop to chose whether user wants to factorial or find prime
        int choice;
        printf("Enter 0 to factorial. Enter 1 to check if number is prime:");
        scanf("%d", &choice);
        if(choice == 0) { // Choice for factorial
            printf("Factorial of %d is %d", n, factorial(n)); // Outputs factorial
            run2 = 0;
        } else if(choice == 1) { // Choice for prime number
            prime(n); // Calls prime
            run2 = 0;
        } else {
            printf("Error. Please input either 0 or 1.\n");
        }
    }

    return 0;
}

