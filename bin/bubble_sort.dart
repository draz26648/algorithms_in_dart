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
