#include <stdio.h>

int main () {
    int n;
    printf("Digite um número: ");
    scanf("%d", &n);

    // fatorial iterativo
    int fatorial = 1;
    for (int i = 1; i <= n; i++) {
        fatorial *= i;
    }

    printf("Fatorial de %d: %d\n", n, fatorial(n));
    return 0;
}