const String constVar = "const~~"; // 톱 레벨에 선언 가능
// const String constVarError; // 값을 할당하지 않으면 에러

class SomeClass {
  static const String constVar = "const!"; // 클래스 내에 선언 시 static 으로 선언
}

void func() {
  const String constVar = "const!!"; // 지역 변수로도 선언 가능
}

main() {
  print(constVar);
}