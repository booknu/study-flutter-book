class Super {
  int x;
  Super(int x) : x = x * 10;
}

class Sub extends Super {
  /// 간소화 : super 의 필드를 기입하면 해당 값으로 superclass 생성자가 호출
  Sub(super.x);

  @override
  String toString() {
    return '${super.x}';
  }
}

main() {
  print(Sub(1)); // 10
}