void optionalPositionalParameterFunc([int x = 10, String y = 'str']) {
  print('$x, $y');
}

// Named Parameter 와 혼용 불가
// void optionalPositionalParamAndNamedParamFunc(
//     x1, x2, x3,
//     [int p1 = 10, String p2 = 'positional'],
//     {int n1 = -1, String n2 = 'named'}) {
//
// }

main() {
  optionalPositionalParameterFunc();
  // 순서에 맞게 호출해야 함
  optionalPositionalParameterFunc(1, 'str');
}