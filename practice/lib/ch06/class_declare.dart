class SomeCls {
  String field1 = 'test';
  int field2 = 1;
  static String staticField = 'test';

  void method() {
    print('$field1, $field2');
  }
}

main() {
  SomeCls().method();
  new SomeCls().method();
}