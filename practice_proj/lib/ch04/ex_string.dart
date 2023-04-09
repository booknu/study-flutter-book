void literal() {
  String singleQuote = 'single quote';
  String doubleQuote = "double quote";
  String multiLine = '''
    this
    is
    multi
    line
  ''';
  String multiLineDoubleQuote = """
    this
    is
    multi
    line
    with double quote
  """;

  print(singleQuote);
  print(doubleQuote);
  print(multiLine);
  print(multiLineDoubleQuote);
}

void equality() {
  String x = 'a';
  String y = 'a';
  print(x == y);
}

String stringProducer() {
  return 'string!';
}

void template() {
  int x = 1;
  String str = 'some string';

  print('x=$x, str=$str, func=${stringProducer()}');
}

main() {
  template();
}