/* Name: Samuel Swedberg
ECE 173 Lab 8 Question 1
Due date: April 13th, 2022 at 11:59pm */
#include<stdio.h>
#include <string.h>
#include <stdlib.h>

char *xstrcat(char *a, char *b){
    char *p=malloc(strlen(a)+strlen(b)+1); // Length
    int ptr =0, temp = 0;

    while(a[temp]!='\0'){ // Stores a into temp array
        p[ptr++] = a[temp++];
    }
    temp=0;
    while(b[temp]!='\0'){ // Same for b
        p[ptr++]=b[temp++];
    }
    return p; // Returns new array
}
int main(){
        char arr1[100], arr2[100]; // Variables

        printf("Enter string 1: "); // Input
        scanf("%s",arr1);
        printf("Enter string 2: ");
        scanf("%s",arr2);

        char *x = xstrcat(arr1, arr2); // Function
        printf("String after concatentation: %s", x); // Print
}