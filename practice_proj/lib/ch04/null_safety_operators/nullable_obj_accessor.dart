accessField() {
  int? x = null;
  print(x?.isEven);
}

accessKey() {
  List<int>? x = null;
  print(x?[0]);
}

void main() {
  accessKey();
}