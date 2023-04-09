void basic() {
  List x = [10, true, 'test']; // 여러 타입을 저장 가능

  x[0] = '22';
}

void generic() {
  List<int> x = [10, 20];
  // x[0] = true; // 불가능
}

void listMethods() {
  List<int> x = [10, 20, 30];
  print(x);

  x.add(0);
  print(x);

  x.remove(10);
  print(x);

  x.removeAt(0);
  print(x);
}

void fixLength() {
  List<int> x = List<int>.filled(3, 0);
  x.remove(0); // 런타임 에러 발생
}

void mutableLength() {
  // growable: true 를 주면 가변 길이의 리스트 생성
  List<int> y = List<int>.generate(3, (index) => index, growable: true);
  y.remove(0); // OK
}

main() {
  fixLength();
}