int recursion(int? i) {
  print(i.toString());
  if (i! <= 1) {
    return 1; // base case
  } else {
    recursion(i - 1); // recursive case
  }
  return 0;
}
