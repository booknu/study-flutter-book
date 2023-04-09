main() {
  Set<int> x = {10, 20, 30};
  Set<int> y = {10, -1};

  x.add(1);
  x.contains(10);
  var z = x.union(y);

  print('$x, $y, $z');
}