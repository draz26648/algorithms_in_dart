import 'dart:io';

void main() {
  recursion(5);
}

int recursion(int? i) {
  print(i.toString());
  if (i! <= 1) {
    return 1; // base case
  } else {
    recursion(i - 1); // recursive case
  }
  return 0;
}

void recursiveBubbleSort_desc(var L, var n) {
  if (n == 1) return;

  for (var i = 0; i < n - 1; i++)
    if (L[i] < L[i + 1]) {
      var temp = L[i];
      L[i] = L[i + 1];
      L[i + 1] = temp;
    }

  recursiveBubbleSort_desc(L, n - 1);
}

void bubbleSort(var L) {
  var n = L.length;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n - i - 1; j++) {
      if (L[j] > L[j + 1]) {
        var temp = L[j];
        L[j] = L[j + 1];
        L[j + 1] = temp;
      }
    }
  }
}

selection_sort(var list) {
  var count = list.length;

  for (var i = 0; i < count - 1; i++) {
    var smallestIndex = i;
    for (var j = i + 1; j < count; j++) {
      if (list[j] < list[smallestIndex]) {
        smallestIndex = j;
      }
    }
    if (smallestIndex != i) {
      var temp = list[i];
      list[i] = list[smallestIndex];
      list[smallestIndex] = temp;
    }
  }
}

binarySearch(List? list, var item) {
  double low = 0;
  double high = list!.length - 1;

  while (low <= high) {
    double mid = (low + high) / 2;
    var gess = list[mid.toInt()];
    if (gess == item) {
      return mid;
    } else if (gess > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return null;
}
