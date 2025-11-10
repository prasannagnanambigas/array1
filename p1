#include <iostream>
using namespace std;

int main() {
    int arr[100], n, i, search, pos = -1;

    cout << "Enter number of elements: ";
    cin >> n;

    cout << "Enter " << n << " elements: ";
    for (i = 0; i < n; i++) {
        cin >> arr[i];
    }

    // Traversing
    cout << "\nArray elements are: ";
    for (i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }

    // Searching
    cout << "\n\nEnter element to search: ";
    cin >> search;

    for (i = 0; i < n; i++) {
        if (arr[i] == search) {
            pos = i;
            break;
        }
    }

    if (pos != -1)
        cout << search << " found at position " << pos + 1 << endl;
    else
        cout << search << " not found in the array." << endl;

    // Sorting (Ascending order - Bubble Sort)
    for (int j = 0; j < n - 1; j++) {
        for (i = 0; i < n - j - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                int temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
            }
        }
    }

    cout << "\nArray after sorting (ascending order): ";
    for (i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }

    cout << endl;
    return 0;
}
