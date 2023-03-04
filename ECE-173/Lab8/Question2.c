/* Name: Samuel Swedberg
ECE 173 Lab 8 Question 2
Due date: April 13th, 2022 at 11:59pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%(max - min+1)+min;
}

int main() 
{
	srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN
	int array[5][5];
    int i, j;
    int diag = 0, rest = 0;
    
    for(i=0;i<5;i++) // Fills array
    {
        for(j=0;j<5;j++)
        {
            int numb = random_gen(1,0);
            array[i][j]=numb;
        } 
    }
    
    for(i=0;i<5;i++) //outer loop
    {
        for(j=0;j<5;j++) //inner loop
        {
            if(array[i][j] == 1 && i == j) //checking if diagonal element is 1
                diag++;
            if(array[i][j] == 0 && i != j) //checking if rest is zeros
                rest++; 
        }
    }
    
    printf("The given matrix is: ");
     for(i=0;i<5;i++){ //outer loop
       printf("\n");
       for(j=0;j<5;j++) //inner loop
           printf("%d ",array[i][j]);
   }
       
    if(diag == 5 && rest == 20) // prints if it is identity or not
    {
        printf("\nThe matrix is an identity matrix.");
    }
    else
    {
        printf("\nThe matrix is not an identity matrix.");
    }

    return 0;
    
}