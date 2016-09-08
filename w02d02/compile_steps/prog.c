// The include file for this program.
#include "prog.h"

int main(int argc, char* argv[]) {

  if (argc == 1) {
    // print the usage to standard error
    fprintf(stderr, "prog <file-name> <quoted-string>\n");
    return 1;
  }

  int value_store = 4;
  fprintf(stdout, "%0X\n", &value_store);

  open_file(argv[1]);

  write_input_string(argv[2]);

  char *str1 = "The fibonacci of 10 is %d\n";
  fprintf(fh, str1, fibonacci(10));

  close_file(fh);

  // Creating dyanic memory and print its location.
  // --> Add error checking. 
  char *str3 = malloc(sizeof(char) * 10);
  
  return 0;
}


void open_file(char *file_name) {

  if(!(fh = fopen(file_name, "w"))) {
    perror("File could not be opened");
  }
}

void write_input_string(char* str){
  fprintf(fh, "%s\n", str);
}

void close_file(){

  if( fclose(fh) != 0 ) {
    perror("File could not be closed");
  }
}

int fibonacci(int val) {

  int val2 = val;
  
  if (val2 == 0) return 0;
  if (val2 == 1) return 1;

  return fibonacci(val2 - 1) + fibonacci(val2 - 2);
}
