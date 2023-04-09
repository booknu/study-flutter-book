abstract class Abstract {
  void abstractMethod();
}

class Sub extends Abstract {
  @override
  void abstractMethod() {
    print('구현!');
  }
}