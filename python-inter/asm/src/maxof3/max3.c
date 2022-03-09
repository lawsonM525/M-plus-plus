/*
 * A small program that illustrates how to call the maxofthree function we wrote in
 * max3.asm
 */

#include <stdio.h>
#include <inttypes.h>

int64_t max3(int64_t, int64_t, int64_t);

int main() {
    printf("%ld\n", max3(1, -4, -7));
    printf("%ld\n", max3(2, -6, 1));
    return 0;
}