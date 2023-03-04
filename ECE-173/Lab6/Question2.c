/* Name: Samuel Swedberg
ECE 173 Lab 6 Question 2
Due date: March 25th, 2022 at 5pm */
#include <stdio.h>
#include <math.h>

int statistics(int a, int b, int c, int d, int e, float *sum, float *avg, float *variance, float *stdd) {
    *sum = a+b+c+d+e; // sum
    *avg = *sum/5; // avg
    *variance= ((a-*avg)*(a-*avg))+((b-*avg)*(b-*avg))+((c-*avg)*(c-*avg))+((d-*avg)*(d-*avg))+((e-*avg)*(e-*avg))/5; // variance
    *stdd = sqrt (*variance); // standard deviation
}
int main() {
    float sum, avg, variance, stdd; // variables
    int a,b,c,d,e;

    printf("Enter 1st number:"); // ask for inputs
    scanf("%d", &a);
    printf("Enter 2nd number:");
    scanf("%d", &b);
    printf("Enter 3rd number:");
    scanf("%d", &c);
    printf("Enter 4th number:");
    scanf("%d", &d);
    printf("Enter 5th number:");
    scanf("%d", &e);

    statistics(a, b, c, d, e, &sum, &avg, &variance, &stdd); // call function

    printf("Sum = %f\n", sum); // print outputs
    printf("Avg = %f\n", avg);
    printf("Variance = %f\n", variance);
    printf("Standard deviation = %f\n", stdd);
    return 0;
}

