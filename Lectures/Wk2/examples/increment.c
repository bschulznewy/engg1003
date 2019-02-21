#include <stdio.h>
int main() {
	int x = 0;
	int y = 0;
	int z = 0;
	y = ++x + 10;
	printf("Pre-increment: %d\n", y);
	y = z++ + 10;
	printf("Post-increment:%d\n", y);
	return 0;
}
