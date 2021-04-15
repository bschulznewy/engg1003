#include <stdio.h>
#include <stdlib.h>

int main() {
	int N = 10000000;
	char *num = (char*)malloc(N*sizeof(char));
	int i, j;

	// Init array
	for(i = 0; i < N; i++)
		num[i] = 1;

	// 0 and 1 are not prime
	num[0] = 0;
	num[1] = 0;

	// Do the thing
	for(i = 2; i < N; i++) {
//		printf("%d\n", i);
		if(num[i])
			for(j = 2*i; j < N; j+=i)
				num[j] = 0;
	}

	// Print the things
	for(i = 0; i < N; i++)
		if(num[i])
			printf("%d\n", i);

	return 0;
}
