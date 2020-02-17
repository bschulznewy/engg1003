#include <stdio.h>

int main() {
	char a;
	short b;
	int c;
	long d;
	float f;
	double dbl;
	long double ldbl;
	__float128 f128;
	printf("char: %d\n", sizeof(a));
	printf("short: %d\n", sizeof(b));
	printf("int: %d\n", sizeof(c));
	printf("long: %d\n", sizeof(d));
	printf("float: %d\n", sizeof(f));
	printf("double: %d\n", sizeof(dbl));
	printf("long double: %d\n", sizeof(ldbl));
	printf("__float128: %d\n", sizeof(f128));
	return 0;
}
