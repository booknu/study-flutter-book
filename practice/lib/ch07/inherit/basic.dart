class Super {
  int x = 10;

  void superMethod() {
    print('super: $x');
  }
}

class Sub extends Super {
  int x = 100;

  @override
  void superMethod() {
    // TODO: implement superMethod
    print('sub: super.x=${super.x}, this.x=${x}');
  }
}

main() {
  Super t = Sub();
  t.superMethod();
}