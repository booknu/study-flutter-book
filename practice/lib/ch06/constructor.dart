import 'dart:math' as math;

class DefaultConstructor {
  String x = '';

  DefaultConstructor() {}
}

class NormalConstructor {
  late String x;

  NormalConstructor(String x) {
    this.x = x;
  }
}

class SimplifiedConstructor {
  String x;

  SimplifiedConstructor(this.x);
}

class Rectangle {
  final int width;
  final int height;
  final int area;

  Rectangle.rectangle(this.width, this.height)
      : area = width * height {
    print(area);
  }

  Rectangle.square(int length)
      : this.rectangle(length, length);

  // Rectangle.square3(int length)
  //     : this.rectangle(length, length) {}; // {} 블록을 사용할 수 없음
  //
  // Rectangle.square4(int length)
  //     : this.rectangle(length, length), this.square(10); // 여러개의 this() 는 사용할 수 없음
  //
  // Rectangle.square5(int length)
  //     : this.rectangle(length, length), this.area = 1; // this() 이외의 구문은 사용할 수 없음

  @override
  String toString() {
    return '$width x $height = $area';
  }
}

createRectangle () {
  Rectangle.rectangle(10, 10);
  Rectangle.square(10);
}

class InitializeListWithStaticFunction {
  String x;

  InitializeListWithStaticFunction(String x)
      : this.x = _toUpperCase(x);

  static String _toUpperCase(String x) {
    return x.toUpperCase();
  }
}

main() {
  print(Rectangle.square(20));
}