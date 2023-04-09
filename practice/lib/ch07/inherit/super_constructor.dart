class Super {
  int x;
  Super(int x): x = x * 100;

  @override
  String toString() {
    // TODO: implement toString
    return x.toString();
  }
}

class Sub extends Super {
  /// subclass 에서 superclass 와 같은 이름의 필드를 선언하면
  /// superclass 에서 사용하는 필드가 this 의 필드로 사용되는듯?
  int x = -1;

  /// 두 가지 방법으로 선언 가능
  Sub.a(super.x);
  Sub.b(int x) : super(x);

  @override
  String toString() {
    // TODO: implement toString
    return '${super.toString()}  ${super.x} $x'; // -1  10000 -1
  }
}

main() {
  print(Sub.a(100));
  print(Sub.b(100));
}