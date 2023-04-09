class SomeCls {
  String? x;
  int? y;
  bool? z;

  @override
  String toString() {
    return '$x, $y, $z';
  }
}

main() {
  var x = SomeCls();
  x.x = 'test';
  x.y = 2;
  x.z = false;

  // 같은 객체에 반복 접근할 때 편하게 사용 가능
  // 객체가 nullable 이라면 ?.. 사용
  var y = SomeCls()
    ..x = 'test'
    ..y = 2
    ..z = false;

  print(x);
  print(y);
}