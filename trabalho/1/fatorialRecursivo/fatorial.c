#include <stdio.h>

// fatorial recursivo
int fatorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fatorial(n - 1);
    }
}

int main () {
    int n;
    printf("Digite um número: ");
    scanf("%d", &n);
    printf("Fatorial de %d: %d\n", n, fatorial(n));
    return 0;
}