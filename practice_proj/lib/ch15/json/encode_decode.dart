import 'dart:convert';

main () {
  String jsonStr = '''
  {
    "id": 1,
    "title": "Title!",
    "completed": false
  }
  ''';

  Map<String, dynamic> decoded = jsonDecode(jsonStr);
  print(decoded);

  decoded['id'] = 2;
  String encoded = jsonEncode(decoded);
  print(encoded);
}