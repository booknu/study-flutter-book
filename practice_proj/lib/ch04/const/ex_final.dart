// final int finalVar;

class SomeCls {
  final int finalVar;

  SomeCls(this.finalVar);
}

void func() {
  final int localFinalVar;
  localFinalVar = 1;
  print(localFinalVar);
}

var x = SomeCls(11);

main() {
  func();
}