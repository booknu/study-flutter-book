main() {
  String mutable = "I'm mutable!";
  const constStr = "I'm const!";
  final finalStr = "I'm final!";

  String mutableTemplate = '! $mutable, $constStr';
  const String constStrTemplateWithConst = '! $constStr';
  // const String constStrTemplateWithMutable = '! $mutable'; // 컴파일 타임에 유추 불가
  // const String constStrTemplateWithFinal = '! $finalStr'; // final 역시 유추 불가
  final String finalStrTemplate = '! $constStr, $mutable, $finalStr';
}