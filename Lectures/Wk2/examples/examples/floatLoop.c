#include <stdio.h>
int main() {
	float x = 16000000.0;
	while(x < 17000000.0) {
		x = x + 1.0;
		printf("%f\n", x);
	}
}
