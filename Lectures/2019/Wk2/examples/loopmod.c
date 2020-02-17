#include <stdio.h>
int main() {
	int x = 0;
	while(x < 1000)
	{
		// Presumably something useful is done with x
		// inside this loop
		if(x%100 == 0)
			printf("%d\n", x);
		x++;
	}
	return 0;
}
