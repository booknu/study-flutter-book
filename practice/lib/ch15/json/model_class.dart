import 'dart:convert';

main() {
  String jsonStr = '''
  {
    "id": 1,
    "title": "Title!",
    "completed": false
  }
  ''';

  Todo decoded = jsonDecode(jsonStr);

  print(decoded);
  print(jsonEncode(decoded));
}

class Todo {
  int id;
  String title;
  bool completed;

  Todo(this.id, this.title, this.completed);

  /// 직접 Map -> ModelClass 변환
  Todo.fromJson(Map<String, dynamic> map)
      : this(map['id'], map['title'], map['completed']);

  /// [jsonEncode] 에서 자동으로 호출되는 함수
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'completed': completed
  };

  @override
  String toString() {
    // TODO: implement toString
    return '$id, $title, $completed';
  }
}
