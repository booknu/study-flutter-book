mixin Mixin {
  int x = 10;

  // Mixin() {} // 불가능

  void mixinFunc() {
    print('inside mixin: $x');
  }
}

class Cls with Mixin {
  void test() {
    print('from mixin: $x');
    mixinFunc();
  }
}

main() {
  Cls().test();
}