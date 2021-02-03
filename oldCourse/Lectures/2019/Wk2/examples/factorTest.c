#include <stdio.h>
int main() {
	int x;
	int y;
	printf("Enter an integer: ");
	scanf("%d", &x);
	printf("Enter another integer: ");
	scanf("%d", &y);
	if(x % y == 0) { // ie: if the remainder is zero
		printf("%d is a factor of %d\n", y, x);
	} else {
		printf("%d is NOT a factor of %d\n", y, x);
	}
	return 0;
}
