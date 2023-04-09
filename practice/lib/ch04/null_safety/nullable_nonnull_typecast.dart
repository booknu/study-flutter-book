int nonNull = 10;
int? nullable = 20;

void implicit_typecast() {
  // nonNull = nullable; // 오류
  nullable = nonNull; // OK
}

void explicit_typecast() {
  nonNull = nullable as int;
}