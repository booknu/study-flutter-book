mixin Mixin on Super { }

class Super { }

class Sub1 extends Super with Mixin { }

// 오류
// class Sub2 with Mixin { }