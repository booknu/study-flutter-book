/// [namedParameter] 은 옵셔널 파라미터이기 때문에 기본값을 명시하지 않으면 `null` 이 기본값이다.
/// 따라서 기본값을 명시하지 않으면 변수를 nullable 로 선언해야 한다.
void namedParameterFunc(param1, {String? namedParameter}) {
  print('param1=$param1, namedParameter=$namedParameter');
}

/// [namedParameter] 은 기본값을 줄 수 있다.
void namedParameterWithDefaultValueFunc(param1, {String namedParameter = 'test'}) {
  print('param1=$param1, namedParameter=$namedParameter');
}

void manyNamedParametersFunc(p1, p2, p3, {n1, n2, n3}) {
  print('$p1, $p2, $p3, n1=$n1, n2=$n2, n3=$n3');
}

void requiredNamedParameterFunc({required int requiredParam}) {
  print(requiredParam);
}

main() {
  // namedParameterFunc(1, 'test'); // named parameter 은 꼭 파라미터 이름을 지정해야 함
  namedParameterFunc(1);
  namedParameterFunc(1, namedParameter: 'test');
  namedParameterWithDefaultValueFunc(1);
  // named parameter 는 이렇게 순서를 뒤죽박죽으로 넣어도 됨
  manyNamedParametersFunc(1, n2: 10, 2, n1: 100, 3);
  // requiredParam 는 필수로 넣어줘야 함
  requiredNamedParameterFunc(requiredParam: 1);
}