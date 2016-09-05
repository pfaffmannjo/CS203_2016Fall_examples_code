#include <stdio.h>

int main (int argc, char *argv[]) {

  int x = 3;
  int z = 10;

  int cnt = 0;

  do {
    x++;
  } while (cnt < z);
  
  printf("%d\n", cnt);
}
