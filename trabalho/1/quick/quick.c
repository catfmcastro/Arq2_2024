#include <stdio.h>

// Função para trocar dois elementos
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Função para particionar o vetor
int partition(int arr[], int low, int high) {
    int pivot = arr[high]; // pivô
    int i = (low - 1); // índice do menor elemento

    for (int j = low; j < high; j++) {
        // Se o elemento atual é menor ou igual ao pivô
        if (arr[j] <= pivot) {
            i++; // incrementa o índice do menor elemento
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

// Função principal que implementa o QuickSort
void quickSort(int arr[], int low, int high) {
    if (low < high) {
        // pi é o índice de particionamento, arr[pi] está agora no lugar certo
        int pi = partition(arr, low, high);

        // Ordena os elementos separadamente antes e depois da partição
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

// Função para imprimir um vetor
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

// Programa principal para testar o QuickSort
int main() {
int arr[50] = {
    0,  1,  2,  3,  4,  5,  6,  7,  8,  9,
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
    30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47, 48, 49
};

    int n = sizeof(arr) / sizeof(arr[0]);
    printf("Vetor original: \n");
    printArray(arr, n);
    quickSort(arr, 0, n - 1);
    printf("Vetor ordenado: \n");
    printArray(arr, n);
    return 0;
}
