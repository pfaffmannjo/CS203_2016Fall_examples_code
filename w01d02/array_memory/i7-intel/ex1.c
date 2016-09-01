#include <stdio.h>

int main(int argc, char *argv[]) {

  char   aChar[10];
  int    aInt[10];
  double aDouble[10];

  int cnt;
  
  for(cnt = 0; cnt < 10; cnt++) {
    printf("%p  %p\n", &aChar[cnt], (aChar + cnt) );
  }

  printf("\n");
      
  for(cnt = 0; cnt < 10; cnt++) {
    printf("%p  %p\n", &aInt[cnt], (aInt + cnt) );
  }

  printf("\n");
      
  for(cnt = 0; cnt < 10; cnt++) {
    printf("%p%  %p\n", &aDouble[cnt], (aDouble + cnt) );
  }
}
