#ifndef PROG_H
#define PROG_H

// System include files, note the angled brackets.
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

/** The functions you will need to create in the source file. **/

// Opens a file and saves the file handler to the global
// variable fh.
void open_file(char* file_name);

// Closes the file that was previously opened with
// the open_file function.
void close_file();

// Writes the third string in the command-line
// to the file opened with open_file.
void write_input_string(char* str);

// Recursively calculates the fibonacci value of the
// passe parameter val.
int fibonacci(int val);

// Global variables that you will use for your program
FILE *fh = NULL;
char *str2 = "The fibonacci number of 10 is %d\n";

#endif // PROG_H
