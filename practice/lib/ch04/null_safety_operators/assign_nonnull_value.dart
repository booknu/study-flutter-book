assignOnlyNonNullValue() {
  int? x;

  x ??= 10;
  x ??= null;

  print(x);
}

main() {
  assignOnlyNonNullValue();
}