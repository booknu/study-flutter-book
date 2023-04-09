class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

class MutablePoint {
  double x, y;

  MutablePoint(this.x, this.y);
}

main() {
  ImmutablePoint.origin;
  var x = const ImmutablePoint(1, 2);
  x = ImmutablePoint(1, 2);
  // const MutablePoint(1, 2); // 오류 발생
}