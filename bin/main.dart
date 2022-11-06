import 'quick_sort.dart';

void main() {
  List<int> values = [0, 5, 7, 9, 3, 1, 2, 10];
  print(values);
  var sortedValues = quickSortList(values);
  print(sortedValues);
}
