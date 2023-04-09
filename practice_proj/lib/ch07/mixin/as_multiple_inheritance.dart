mixin Mixin {
  int mixinData = 10;
  void mixinFunc() {
    print('mixin: $mixinData');
  }
}

mixin Mixin2 {
  int mixinData = -1;
  int superData = -1;
  void mixinFunc() {
    print('mixin: $mixinData');
  }
}


class Super {
  int superData = 222;
  void superFunc() {
    print('super: $superData');
  }
}

class Sub1 extends Super with Mixin {
  void testSub() {
    print('mixinData=$mixinData, superData=$superData');
    mixinFunc();
    superFunc();
  }
}

/// 이름이 충돌할 경우?
class Sub2 extends Super with Mixin, Mixin2 {
  void testSub() {
    print('mixinData=$mixinData, superData=$superData');
    mixinFunc();
    superFunc();
  }
}

main() {
  Sub1().testSub();
  print('');
  Sub2().testSub();
}