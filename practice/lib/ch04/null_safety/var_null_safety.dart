void basic() {
  // non null int
  var a = 10;

  // nullable dynamic
  // warning 발생: Java 와 비슷하게 = null 을 붙이지 않아도 묵시적으로 null 로 초기화 됨
  var b = null;

  // nullable dynamic
  var c;
  c = null;

  // 오류: var 뒤에는 ? 붙일 수 없음
  // var? d = null;
}

int? generateNullable() {
  return 10;
}

void varInitWithVariable() {
  int nonNull = 10;
  int? nullable = 20;
  int? nullableWithNull;

  var nonNullVar = nonNull; // int
  var nullableVar = nullable; // int
  var nullableWithNullVar = nullableWithNull; // int?
  var nullableFunctionVar = generateNullable();

  // nonNullVar = null; // 에러
  // nullableVar = null; // 에러: 해당 변수가 항상 nonNull 이라고 판단되면 nonNull 로 취급하는듯
  nullableWithNull = null; // OK
  nullableFunctionVar = null; // OK
}

main() {
  basic();
}