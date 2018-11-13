


#include <stdio.h>
#include <bits/types/clock_t.h>
#include <time.h>

int mult(int A[4][4], int B[4][4], int C[4][4]) {
    int size = 4;

    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            for (int k = 0; k < size; ++k) {
                C[i][j] += (A[i][k]) * (B[k][j]);
            }


        }
    }
    return 0;
}

int print(int Matrix[4][4]) {
    for (int l = 0; l < 4; ++l) {
        for (int i = 0; i < 4; ++i) {

            printf("%d ", Matrix[l][i]);
        }
        printf("\n");
    }

}


int main() {

    int size = 4;
    int A[4][4] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int B[4][4] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int C[4][4] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    clock_t start = clock();
    mult(A, B, C);
    clock_t end = clock();
    double elapsed_time = (end - start)/(double)CLOCKS_PER_SEC;
    printf("Elapsed time: %.2f.\n", elapsed_time);
    print(C);


}