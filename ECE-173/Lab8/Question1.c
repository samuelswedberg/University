/* Name: Samuel Swedberg
ECE 173 Lab 8 Question 1
Due date: April 13th, 2022 at 11:59pm */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int random_gen(int max, int min){     //THIS IS THE RANDOM NUMBER GENERATOR FUNCTION YOU CAN COPY
	return rand()%max + min;
}

int sort(int *array, int x)
{
    for(int i=0;i<20-1;i++)
    {
        int pos = i;

        for(int j = i+1;j<20;j++)
        {
            if ((x == 0 && array[j] < array[pos])
                || (x == 1 && array[j] > array[pos]))
            {
                pos = j;
            }
        }

        if(pos != i)
        {
            int temp = array[pos];
            array[pos] = array[i];
            array[i] = temp;
        }
    }
}

int main() 
{
	srand (time(NULL));           //THIS SEEDING CALL SHOULD BE DONE IN MAIN
	int array[20];
    int i;
    int x;
    
    printf("Array of unsorted numbers:\n");
    for(i=0;i<20;i++) // Fills array
    {
        int numb = random_gen(100,1);
        array[i]=numb;
        printf("%d ",array[i]);
    }
    printf("\n");
    do
    {
        printf("Enter 1 to sort decreasing, or enter 0 to sort increasing:\n"); // User input
        scanf("%d", &x);
    } while(x!=0 && x!=1);

    sort(array, x);

    printf("\nArray after sorting:\n");
    for(int i = 0;i<20;i++)
    {
        printf("%d ", array[i]);
    }
    printf("\n");

    return 0;
    
}