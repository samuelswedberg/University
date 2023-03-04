/* Name: Samuel Swedberg
ECE 173 Lab 6 Question 4
Due date: March 25th, 2022 at 5pm */
#include <stdio.h>
int fun_rec(int x) { // Recursive function
    if(x == 0)
        return 0;
    else
        return x%10+fun_rec(x/10);
}

int fun_nonrec(int x) { // Nonrecursive function
    int a2 = 0;
    while(x != 0) { // while x becomes 0
        a2 += x%10;
        x = x/10;
    }
    return a2; 
}

int main() {
    int x, a1, a2; // variables
    printf("Enter an int:"); 
    scanf("%d", &x);
    
    a1 = fun_rec(x);
    a2 = fun_nonrec(x);

    printf("Difference is %d", a1-a2); // difference
    return 0;
}

