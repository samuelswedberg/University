//Samuel Swedberg ECE 173
#include <stdio.h> 

int main() {
		float a[5][5], b[5][5], x; 							
		int n, m, i, j; 	

		printf("Numbers of rows (max.50):"); 
        scanf("%d", &n ); 
        printf("Numbers of columns (max.50):"); 
        scanf("%d", &m ); 

		for (i=0; i<n; i++) 
			for (j=0; j<m; j++) {
		 	printf("[%d][%d]:",i,j); 
			scanf("%f", &a[i][j]); 
				} 
			printf("Multiply by:"); 
			scanf("%f", &x ); 
			printf("Original matrix :\n");  

		for (i=0; i<n; i++) { for (j=0; j<m; j++) 
			printf("%10.2f", a[i][j]); 
			printf("\n"); } 		

		for (i=0; i<n; i++) 
			for (j=0; j<m; j++) b[i][j] = x*a[i][j]; 			
			printf("Matrix after multiplication :\n"); 
				for (i=0; i<n; i++) {
 				for (j=0; j<m; j++) 

		printf("%10.2f", b[i][j]); printf("\n"); 
} 
		return 0; 
} 