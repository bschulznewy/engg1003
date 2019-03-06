#include <stdio.h>
int main() {
	unsigned int count = 1, x;
	printf("Enter an integer to factorise: ");
	scanf("%d", &x);
	while(count <= x) {
		if(x % count == 0) // ie: if the remainder is zero
			printf("%u\n", count);
		count++;
	}
	printf("\n");
	return 0;
}
