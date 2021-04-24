#include <stdio.h>
#include <stdlib.h>

int main() {
	int a,b,x;
	int score = 0;

	while(score < 10) {
		a = rand()%10+1;
		b = rand()%10+1;
		printf("%d + %d = ", a, b);
		scanf("%d", &x);
		if(x == a+b)
			printf("Correct! Score: %d\n", ++score);
		else
			printf("No :( the answer was %d\n", a+b);
	}
}
