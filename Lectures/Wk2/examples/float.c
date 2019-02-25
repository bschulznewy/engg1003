#include <stdio.h>

int main() {
	int i;
	float x;
	for(i = 0; i < 1e8; i++)
		x = x + (float)1.0;
	return 0;
}
