main() {
  Map<String, int> x = {
    'key': 1,
    'x': 2
  };

  print(x['key']);

  x['key'] = 2;
  x['newKey'] = 3;

  print(x);
}