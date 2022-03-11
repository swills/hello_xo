#include <stdio.h>
#include <stdlib.h>
#include <err.h>
#include <libxo/xo.h>

int main(int argc, char *argv[]) {
  argc = xo_parse_args(argc, argv);
  xo_open_container("hello");
  xo_emit("{:message/%s}\n", "Hello World!");
  xo_close_container("hello");
  xo_finish();

  if (ferror(stdout) != 0 || fflush(stdout) != 0)
          err(EXIT_FAILURE, "stdout");
  exit(EXIT_SUCCESS);
}
