main () {
  int? x = 10;
  bool? flag = x?.isEven;
  x = null;
  Object? obj = x;
}