#include <stdio.h>

struct Student // Student struct
{
   int id;
   char name[30];
   char department[20];
   char course[20];
   int joinYear;
};

void printYear(struct Student s[5],int year) // Year function
{
   int i;
   for(i=0;i<5;i++)
   {
       if(s[i].joinYear == year)
       {
           printf("%d\t%s\t%s\t%s\t%d\n",s[i].id,s[i].name,s[i].department,s[i].course,s[i].joinYear);
       }
   }
}

void printID(struct Student s[5],int id) // ID function
{
   int i;
   for(i=0;i<5;i++)
   {
       if(s[i].id == id)
       {
           printf("%d\t%s\t%s\t%s\t%d\n",s[i].id,s[i].name,s[i].department,s[i].course,s[i].joinYear);
       }
   }
}

int main() {
   int year,id; // Variable
   struct Student st[5] = {{1,"Tyler Blevins","Physics","111",2020}, // Hard code student struct
   {2,"Tom Brady","Business","112",2021},
   {3,"Dwayne Johnson","Economics","113",2021},
   {4,"Future","Music","114",2020},
   {5,"Gunna","Music","115",2021}};
  
   printf("\nEnter the year : "); // Input
   scanf("%d",&year);
   printYear(st,year); // Year function
  
  
   printf("\nEnter the id : "); // Input
   scanf("%d",&id);
   printID(st,id); // ID function
  
   return 0;
}