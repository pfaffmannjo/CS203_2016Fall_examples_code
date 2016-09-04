int main (int argc, char *argv[]) {

  int x = 3;
  int z = 10;

  int cnt = 0;

  while (cnt < z) {
    x++;
    cnt++;
  }
  
  printf("%d\n", cnt);
}