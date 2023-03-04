/* Name: Samuel Swedberg
ECE 173 Lab 6 Question 1
Due date: March 25th, 2022 at 5pm */
#include <stdio.h>
int main() {
    int a; // Int var
    float b; // Float var
    char c; // Char var
    int *d = &a; // Int pointer
    float *e = &b; // Float pointer
    char *f = &c; // Char pointer

    printf("Enter an int:"); // Input int
    scanf("%d", &a);

    printf("Enter a float:"); // Input float
    scanf("%f", &b);

    printf("Enter a char:"); // Input char
    scanf(" %c", &c);
    
    printf("\nInt: %d, %d\nFloat: %f, %f\nChar: %c, %c\n",a, *d, b, *e, c, *f); // Print values

    printf("Address of int: %u\nInt pointer: %u\n", &a, &d); // Print addresses
    printf("Address of float: %u\nFloat pointer: %u\n", &b, &e);
    printf("Address of char: %u\nChar pointer: %u\n", &c, &f);

    *d = (*d) + 1; // Arithmetic operation
    *e = (*e) + 2;
    *f = (*f) + 3;

    printf("\nInt: %d\nFloat: %f\nChar: %c\n", *d, *e, *f); // Print pointers after arithmetic

    return 0;
}

