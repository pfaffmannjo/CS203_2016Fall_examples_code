#include <stdio.h>

int main(int argc, char *argv[]) {

	int x;
	int *b;
	int **c;

	x = 5;
	b = &x;
	c = &b;

	printf ("%d\n",x);

	printf ("b %x\n",b);
	printf ("c %x\n",c);
	printf ("%x\n",*b);
	printf ("&b %x\n",&b);
	printf ("&c %x\n",&c);
	printf ("%d\n",sizeof(int));
	printf ("%d\n",sizeof(double));
	printf ("%d\n",sizeof(float));
	printf ("%d\n",sizeof(x));
	printf ("%d\n",sizeof(b));
	printf ("%d\n",sizeof(c));
}
