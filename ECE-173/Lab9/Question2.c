#include<stdio.h>

void xstrrev(char *arr){
        int length=0; // Length

        for(length=0;arr[length]!='\0';length++); // Reverse
        for(int i=length-1;i>=0;i--)
                printf("%c",arr[i]);
}
int main(){
        char arr[100]; // Variable

        printf("Enter string: "); // Input
        scanf("%s",arr);

        xstrrev(arr); // Function
}