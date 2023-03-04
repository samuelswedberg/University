/* Name: Samuel Swedberg
ECE 173 Lab 6 Question 3
Due date: March 25th, 2022 at 5pm */
#include <stdio.h>
int* rounding(float *hum, float *prox, float *pla) {
    *hum = (int)*hum; // Converts hum to int
    *prox = (int)*prox; // Converts prox to int
    *pla = (int)*pla; // Converts pla to int
}

int other(int hum, int prox, int pla) {
    printf("This shows that the values are ints: %d, %d, %d", hum, prox, pla); 
}

int main() {
    float hum = 1.1, prox = 2.5, pla = 3.7; // Variable declaration
    rounding(&hum, &prox, &pla); // Rounding function
    other(hum, prox, pla); // Other functions
    
    return 0;
}

