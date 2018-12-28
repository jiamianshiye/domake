#include "add.h"
#include "minus.h"
#include "mul.h"
#include "divide.h"
int main(int argc, char *argv[])
{
    int a = 10, b = 20;
    int c = 0;


    c = add(a, b);
    printf("%d\n", c);
    c = minus(c, b);
    printf("%d\n", c);
    a = divide(c, b);
    printf("%d\n", a);
    c = mul(a, b);
    printf("%d\n", c);
    return 0;
}
