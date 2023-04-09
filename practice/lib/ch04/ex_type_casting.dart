void doubleInt() {
  int x = 10;
  double y = 100;

  double intToDouble = x.toDouble();
  int doubleToInt = y.toInt();
}

void intString() {
  int x = 100;
  String str = '1000';

  print(x.toString());
  print(int.parse(str));
}

main() {
  intString();
}