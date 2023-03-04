/* Name: Samuel Swedberg
ECE 173 Lab 3 Question 1
Due date: Feb 23th, 2022 at 5pm */
#include <stdio.h>

int main() {
    int value1, value2, result, run; // Variables
    char operator, restart;
    run = 1;

    while(run == 1) { // Runs until user wants to terminate it    
        printf("Enter first value:"); // Inputs
        scanf("%d", &value1);
        printf("Enter second value:");
        scanf("%d", &value2);
        printf("Enter operator (+, -. *, /, %%):");
        scanf(" %c", &operator);

        switch(operator) { // Switch statement for which operator to use
            case '+':
                result = value1+value2; // Calcuations
                printf("Result: %d", result); // Print output
                break;
            case '-':
                result = value1-value2;
                printf("Result: %d", result);
                break;
            case '*':
                result = value1*value2;
                printf("Result: %d", result);
                break;
            case '/':
                if(value2 == 0){ // Throws divide by 0 error
                    printf("Error: Divide by 0.");
                }
                else{ // Prints if division is possible
                    result = value1/value2;
                    printf("Result: %d", result);
                }
                break;
            case '%':
                result = value1%value2;
                printf("Result: %d", result);
                break;
            default: // Error statement if no case is met
                printf("Error. Please follow instructions correctly.");
                return 0;
        }
        printf("\nWould you like to enter another set of values? (Y/N):"); // Asks to restart loop
        scanf(" %c", &restart);
        int restart_int = restart; // Converts char to int
        if(restart_int == 110 || restart_int == 78) { // If Y or y then restart, If N or n then terminate
            run = 0;
        } else if(restart_int == 89 || restart_int == 121) {
            run = 1;
        } else{
            printf("Error: Y/N not used."); // Exits if anything but Yy and Nn is entered
            return 0;
        }
    }
}