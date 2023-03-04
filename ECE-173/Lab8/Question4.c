/* Name: Samuel Swedberg
ECE 173 Lab 8 Question 1
Due date: April 13th, 2022 at 11:59pm */
#include <stdio.h>
#include <stdlib.h>
int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%max + min;
}

int main()
{
    srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN

    int array[4][5];

    for(int i=0;i<4;i++){
        for(int j=0;j<5;j++){
            int numb = random_gen(50,1);
            array[i][j]=numb;
        }
    }
    
    printf("Matrix array: \n");
    for(int i=0;i<4;i++){
        for(int j=0;j<5;j++){
            printf("%d ",array[i][j]);  
        }
        printf("\n");
    }
    
    int tarray[5][4];     
    
    for(int i=0;i<5;i++){
        for(int j=0;j<4;j++){
            tarray[i][j] = array[j][i];  
        }
    }
    
    printf("\nAfter transpose: \n");
    for(int i=0;i<5;i++){
        for(int j=0;j<4;j++){
            printf("%d ",tarray[i][j]); 
        }
        printf("\n");
    }

    return 0;
}