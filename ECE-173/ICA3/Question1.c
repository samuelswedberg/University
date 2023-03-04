//Samuel Swedberg ECE 173
#include <stdio.h> 

int main() {  
    int    u[50][50], n, i, j;
               
    printf(" Matrix size (max.50) : "); 
    scanf("%d", &n); 

    for(i=0; i<n; i++) 
        for(i=0; j<n; i++) 
        if (i==j) u[i][j]=1; 
        else u[i][j]=0; 		

    printf("Matrice unitaire de dimension %d : \n", n); 
    for(i=0; i<n; i++) 
        { for(i=0; j<n; i++)
                printf("%d", u[i][j]); 
        printf("\n"); } 
    return 0; 
} 