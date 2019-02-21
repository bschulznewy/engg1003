#include <stdio.h>
int main() {
	int input;
	int x;
	printf("Enter an integer to factorise: ");
	scanf("%d", &input);
	x = input;
	while(x > 0) {
		if(input % x == 0) // ie: if the remainder is zero
			printf("%d is a factor of %d\n", x, input);
		x--;
	}
	return 0;
}
