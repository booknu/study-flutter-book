void assignWhenDeclare() {
  var x = 10; // 선언과 동시에 할당
  // x = 'test'; // 불가능

  print(x.runtimeType);
}

void notAssignWhenDeclare() {
  var x;
  print(x.runtimeType);

  x = 10;
  print(x.runtimeType);

  x = 'test';
  print(x.runtimeType);
}

main() {
  notAssignWhenDeclare();
}