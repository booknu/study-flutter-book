class User {
  int no;
  String name;
  User(this.no, this.name);

  String greet(String to) => "Hello $to, I'm $name. My number is $no";
}

class SomeInterface {
  int no;
  SomeInterface(this.no);

  int getNo() => no;
}

class Sub implements User, SomeInterface {
  /// 여러 인터페이스에 공통적으로 존재하는 필드는 하나만 선언해도 되는듯
  /// 그런데 타입이 다르면?
  @override
  int no;

  @override
  String name;

  Sub(this.no, this.name);

  @override
  String greet(String to) {
    return '!!';
  }

  @override
  int getNo() {
    return no;
  }
}