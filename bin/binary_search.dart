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
