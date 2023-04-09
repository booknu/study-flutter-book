int func1(int plus(int x, int y)) {
  return plus(1, 2);
}


int func2(int Function(int x, int y) plus) {
  return plus(1, 2);
}

void main() {
  var r1 = func1((x, y) => x + y);
  var r2 = func1((x, y) => x + y);
  print('$r1, $r2');
}