List<E> quickSortList<E extends Comparable<dynamic>>(List<E> list) {
  // check if list is empty or have only 1 value in this case list is already sorted
  if (list.length < 2) return list;

  final pivot = list[0]; // choose first value in list as a pivot for algorithm

  final less = list.where((element) => element.compareTo(pivot) < 0);

  final equal = list.where((element) => element.compareTo(pivot) == 0);

  final high = list.where((element) => element.compareTo(pivot) > 0);

  return [
    ...quickSortList(less.toList()),
    ...equal,
    ...quickSortList(high.toList())
  ];
}
