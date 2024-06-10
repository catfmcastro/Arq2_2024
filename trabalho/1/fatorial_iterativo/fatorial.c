#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>

int main () {
    uint64_t n;
    printf("Digite um número: ");
    scanf("%" SCNu64, &n);

    // fatorial iterativo
    uint64_t fatorial = 1;
    for (int i = 1; i <= n; i++) {
        fatorial *= i;
    }

    printf("Fatorial de %" PRIu64 ": %" PRIu64 "\n", n, fatorial);
    return 0;
}