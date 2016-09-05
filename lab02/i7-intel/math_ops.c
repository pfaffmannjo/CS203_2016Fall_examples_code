#include <stdio.h>

int main (int argc, char *argv[]) {

  int x = 3;
  int y = 5;
  int z = 7;

  int t1   = x+y;
  int t2   = z+t1;
  int t3   = x+4;
  int t4   = y * 48; 
  int t5   = t3 + t4;
  int rval = t2 * t5;

  printf("%d\n", rval);

}
