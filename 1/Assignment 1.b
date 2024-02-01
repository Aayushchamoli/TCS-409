#include <iostream>
using namespace std;

int binarySearch(int array[], int low, int high, int key, int &comparisons) {
    while (low <= high) {
        int mid = low + (high - low) / 2;
        comparisons++;

        if (key == array[mid]) {
            return mid;
        }

        if (key > array[mid]) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return -1;
}

int main() {
    int n;

    // Get the size of the array from the user
    cout << "Enter the size of the sorted array: ";
    cin >> n;

    int sortedArray[n];


    cout << "Enter the sorted elements of the array:" << endl;
    for (int i = 0; i < n; i++) {
        cout << "Element " << i + 1 << ": ";
        cin >> sortedArray[i];
    }

    int key;

    cout << "Enter the key element to search: ";
    cin >> key;

    int comparisons = 0;

  
    int result = binarySearch(sortedArray, 0, n - 1, key, comparisons);

    if (result == -1) {
        cout << "Element not found in the array" << endl;
    } else {
        cout << "Element found at index " << result << endl;
    }

    cout << "Total number of comparisons: " << comparisons << endl;

    return 0;
}
