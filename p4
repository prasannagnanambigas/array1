#include <iostream>
using namespace std;

int main() {
    int rows, cols;

    cout << "Enter the number of rows and columns: ";
    cin >> rows >> cols;

    int matrix[10][10];
    cout << "Enter elements of the matrix:\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> matrix[i][j];
        }
    }

    // Count non-zero elements
    int count = 0;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (matrix[i][j] != 0)
                count++;
        }
    }

    // Triplet representation: first row = (rows, cols, non-zero count)
    int triplet[10][3];
    triplet[0][0] = rows;
    triplet[0][1] = cols;
    triplet[0][2] = count;

    int k = 1;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (matrix[i][j] != 0) {
                triplet[k][0] = i;      // Row index
                triplet[k][1] = j;      // Column index
                triplet[k][2] = matrix[i][j]; // Value
                k++;
            }
        }
    }

    // Display Triplet Matrix
    cout << "\nTriplet Representation (Row  Column  Value):\n";
    for (int i = 0; i <= count; i++) {
        cout << triplet[i][0] << "\t" << triplet[i][1] << "\t" << triplet[i][2] << endl;
    }

    return 0;
}
