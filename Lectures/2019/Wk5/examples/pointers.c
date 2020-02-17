 
#include<stdio.h> 
 
int main() 
{ 
    char a; 
    int i; 
    int x[2]; 
     
    printf("Address of a:   \t%lu\n", &a); 
    printf("Address of i:   \t%lu\n", &i); 
    printf("Address of x[0]:\t%lu\n", &x[0]); 
    printf("Address of x[1]:\t%lu\n", &x[1]); 
    printf("Address of x[2]:\t%lu\n", &x[2]); 
}
