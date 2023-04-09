func1() {
  print('func1');
}

Function func2 = () {
  print('func2');
};

main() {
  func1();
  func2();

  print(func1.runtimeType);
  print(func2.runtimeType);

  // 람다 함수 실사용 예시
  ['1', '2', '3'].forEach((element) {
    print('elem: $element');
  });
}