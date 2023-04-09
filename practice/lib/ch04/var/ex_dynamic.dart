main() {
  dynamic x; // 여기서 값을 할당해도 되고, 안 해도 됨.
  print(x.runtimeType);

  x = 10;
  print(x.runtimeType);

  x = 'test';
  print(x.runtimeType);

  x = true;
  print(x.runtimeType);
}