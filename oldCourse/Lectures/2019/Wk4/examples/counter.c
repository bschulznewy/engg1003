#include <stdio.h>

int counter(void);

int main() {
	for(int k = 0; k < 10; k++)
		printf("counter(): %d\n", counter() );
	return 0;
}

int counter(void) {
	static int counter = 0;
	return counter++;
}
