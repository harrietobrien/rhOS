#include <stdio.h>

int print_os() {
#ifdef WIN
    printf("Windows\n");
#elifdef NIX
    printf("Linux\n");
#elifdef OSX
    printf("MacOS\n");
#else
    printf("unknown\n");
#endif
    return 0;
}

int main() {
    print_os();
    return 0;
}
