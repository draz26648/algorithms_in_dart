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
