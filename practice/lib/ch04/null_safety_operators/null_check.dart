nullCheck() {
  int? nullable = 1;
  print(nullable!);

  nullable = null;
  print(nullable!); // 런타임 오류
}

int? returnNullIfZero(x) {
  if (x == 0) {
    return null;
  }

  return x;
}

nullCheckFunctionCall() {
  print(returnNullIfZero(1)!);
  print(returnNullIfZero(0)!); // 런타임 오류
}

main() {
  nullCheckFunctionCall();
}