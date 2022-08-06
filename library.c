#include <stdio.h>

typedef struct  {
  int a,b,c;
} ABC;

const char * hello(void) {
    return "Hello, World!";
}

int8_t plus(int8_t a, int8_t b) {
    return a+b;
}

int sum_ABC(ABC *abc){
  return abc->a + abc->b + abc->c;
}


