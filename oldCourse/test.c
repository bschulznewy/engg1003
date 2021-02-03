#include <stdio.h>

int x(void);

main() {
	int x = 10;
	printf("%d\n", x);
	printf("%d\n", x());
}

int x(void) {
	return 5;
}
