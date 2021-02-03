#include<stdio.h>

int main()
{
    int x, i;
    scanf("%d", &x);
    int array[x];

    for(i = 0; i < x; i++){
        printf("%d\n", array[i]);
    }
    return 0;
}
