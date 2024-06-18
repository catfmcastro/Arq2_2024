#include <stdio.h>

// Função para trocar dois elementos
void swap(int *a, int *b)
{
    int t = *a;
    *a = *b;
    *b = t;
}

// Função para particionar o array
int partition(int arr[], int low, int high)
{
    int pivot = arr[high]; // Escolhendo o último elemento como pivô
    int i = (low - 1);     // Índice do menor elemento

    for (int j = low; j <= high - 1; j++)
    {
        // Se o elemento atual é menor ou igual ao pivô
        if (arr[j] <= pivot)
        {
            i++; // Incrementa o índice do menor elemento
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

// Função principal do QuickSort
void quickSort(int arr[], int low, int high)
{
    if (low < high)
    {
        // pi é o índice de particionamento
        int pi = partition(arr, low, high);

        // Separadamente ordena os elementos antes e depois da partição
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

// Função para imprimir o array
void printArray(int arr[], int size)
{
    for (int i = 0; i < size; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main()
{
    int arr[] = {10, 7, 8, 9, 1, 5};
    int n = sizeof(arr) / sizeof(arr[0]);
    printf("Array original: \n");
    printArray(arr, n);
    quickSort(arr, 0, n - 1);
    printf("Array ordenado: \n");
    printArray(arr, n);
    return 0;
}
