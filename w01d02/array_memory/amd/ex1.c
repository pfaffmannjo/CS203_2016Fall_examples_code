#include <stdio.h>

int main(int argc, char *argv[]) {

  char   aChar[10];
  int    aInt[10];
  double aDouble[10];

  for(int cnt = 0; cnt < 10; cnt++) {
    printf("%p\n", &aChar[cnt], (aChar + cnt) );
  }

  printf("\n");
      
  for(int cnt = 0; cnt < 10; cnt++) {
    printf("%p\n", &aInt[cnt], (aInt + cnt) );
  }

  printf("\n");
      
  for(int cnt = 0; cnt < 10; cnt++) {
    printf("%p\n", &aDouble[cnt], (aDouble + cnt) );
  }
}
