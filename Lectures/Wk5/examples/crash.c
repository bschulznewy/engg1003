#include <stdio.h>

int main() {
	int x[10];
	int idx;
	for(idx = 0; idx < 100000000000L; idx++)
		printf("%d\n", x[idx]);
}
