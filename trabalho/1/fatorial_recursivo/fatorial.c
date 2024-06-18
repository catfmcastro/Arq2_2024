#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>

// fatorial recursivo
uint64_t fatorial(uint64_t n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fatorial(n - 1);
    }
}

int main () {
    uint64_t n;
    printf("Digite um número: ");
    scanf("%" SCNu64, &n);
    printf("Fatorial de %" PRIu64 ": %" PRIu64 "\n", n, fatorial(n));
    return 0;
}

// #include <stdio.h>

// // fatorial recursivo
// unsigned long long fatorial(unsigned long long n) {
//     if (n == 0) {
//         return 1;
//     } else {
//         return n * fatorial(n - 1);
//     }
// }

// int main () {
//     unsigned long long n;
//     printf("Digite um número: ");
//     scanf("%llu", &n);
//     printf("Fatorial de %llu: %llu\n", n, fatorial(n));
//     return 0;
// }