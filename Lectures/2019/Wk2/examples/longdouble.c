#include <stdio.h>

int main() {
	int i;
	__float128 x;
	for(i = 0; i < 1e8; i++)
		x = x + (__float128)1.0;
	return 0;
}
