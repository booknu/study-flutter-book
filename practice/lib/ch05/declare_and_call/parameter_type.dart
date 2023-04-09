/// [x] 는 동적 타입으로 취급
dynamicParameterFunc(var x) {
  print('$x : ${x.runtimeType}');
}

/// 타입을 선언하지 않는 경우 [x] 는 동적 타입으로 취급
implicitDynamicParameterFunc(x) {

}

/// 또는 명시적으로 타입을 지정
explicitStaticTypeFunc(int? x) {

}

main() {
  dynamicParameterFunc(10);
  dynamicParameterFunc(null);
}