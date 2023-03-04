//Samuel Swedberg ECE 173
#include <stdio.h> 

int main() {
	int a[100], b[50]; 
	int n, m; 
	int i; 

	printf("Dimension of Table A (max.50):"); 
	scanf("%d", &n ); 
	for(i=0; i<n; i++) {
 		printf("Element %d : ", i); 
			scanf("%d", a+i); } 
		printf("Size of Table B (max.50):"); 
		scanf("%d", &m ); 
        
			for(i=0; i<m; i++) { 
				printf("Element %d : ", i); 
				scanf("%d", b+i); } 
				printf("Given Table A :\n"); 
			
            for(i=0; i<n; i++) 
				printf("%d ", *(a+i)); 
				printf("\n"); 
				printf("Given Table B :\n"); 
			
            for(i=0; i<m; i++) 
				printf("%d ", *(b+i)); 
				printf("\n"); 
			
            for(i=0; i<m; i++) *(a+n+i) = *(b+i); 
				n += m; 
			printf("Result of Table A:\n"); 
			
            for (i=0; i<n; i++) 
				printf("%d ", *(a+i)); 
			printf("\n"); 

    return 0;   
}