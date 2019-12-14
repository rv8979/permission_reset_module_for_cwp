#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char ** argv) {
  setuid(0);
  char cmd[100] = "";
  int i;
  char * p;
  for (i = 0; i < argc; i++) {
    if (i != 0) {
      strcat(cmd, *(argv + i));
      strcat(cmd, " ");
    }
  }
  char str[] = "/bin/bash /usr/local/permi_rv/permi_rv ";
  strcat(str, cmd);

  //printf("%s", str);
  system(str);

  return 0;
}
