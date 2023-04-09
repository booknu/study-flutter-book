void noReturn() {

}

dynamic explicitReturnDynamic(int x) {
  if (x == 1) {
    return 1;
  }

  if (x == 2) {
    return 'Two';
  }

  // 명시적으로 return 하지 않으면 return 값은 null
}

/// 함수 내에서
implicitReturnDynamic() {
  // 명시적으로 return 하지 않으면 return 값은 null
}