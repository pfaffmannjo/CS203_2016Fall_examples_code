#include <stdio.h>

int main (int argc, char *argv[]) {

  int x = 3;
  int z = 10;

  int cnt;

  for(cnt = 0; cnt < z; cnt++) {
    x++;
    cnt++;
  }

  printf("%d\n", cnt);
}
