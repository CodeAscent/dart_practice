
// Array must be sorted


void main() {
  List array = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  print(binarySearch(100, array));
}

binarySearch(int number, List array) {
  int low = 0;
  int high = array.length - 1;
  while (low <= high) {
    int mid = ((low + high) / 2).round();

    if (array[mid] == number) {
      return "number found at $mid";
    }
    if (array[mid] < number) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return "not found";
}
