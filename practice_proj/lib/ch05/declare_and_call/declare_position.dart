topLevelFunc() {
  innerFuncFunc() {}
}

class SomeCls {
  method() {
    innerMethodFunc() {}
  }

  // /// 함수 overloading 불가!
  // /// 대신 파이썬 처럼 optional parameter 사용 가능
  // method(int x) {
  //
  // }
}