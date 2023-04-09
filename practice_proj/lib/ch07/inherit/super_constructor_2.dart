class Super {
  int x;
  Super(int x) : x = x * 10;
}

class Sub extends Super {
  /// 이렇게 초기화 가능
  Sub(int x) : super(x);

  @override
  String toString() {
    return '${super.x}';
  }
}