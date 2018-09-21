#include "add.h"
#include "minus.h"
#include "mul.h"
#include "divide.h"
int main(int argc, char *argv[])
{
    int a = 10, b = 20;
    int c = 0;


    c = add(a, b);
    c = minus(c, b);
    a = divide(c, b);
    c = mul(a, b);
    return 0;
}
