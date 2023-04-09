import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

/// {current_dart_file_name}.g.dart 를 part 로 지정해야 함
/// 그 후, 아래처럼 JsonSerializable 클래스를 만들고 터미널 명령어로 `flutter pub run build_runner build` 실행
/// 그러면 아래 파일명을 가지는 dart 파일이 자동 생성됨
part 'json_serializable.g.dart';

main() {
  Todo todo = Todo(
    todoId: 1,
    title: 'Todo Title',
    completed: false,
    location: Location(lon: 1, lat: 2),
  );

  print(jsonEncode(todo));
  print(jsonDecode(jsonEncode(todo)));
}

/// JSON Model Class
@JsonSerializable(explicitToJson: true)
class Todo {
  @JsonKey(name: 'id')
  int todoId;
  String title;
  bool completed;
  Location location;

  /// 생성자는 일반 positional constructor 여도 되고, named constructor 여도 됨.
  /// 단, 생성자가 바뀌면 [json_serialization.g.dart] 구현도 바뀌므로 다시 명령어 실행해서
  /// 파일을 다시 만들어줘야 함
  Todo(
      {required this.todoId,
      required this.title,
      required this.completed,
      required this.location});

  /// 아래 두 함수는 `flutter pub run build_runner build` 전에는 만들지 않아도 됨.
  /// deserialization 으로 사용되는 함수
  /// _$TodoFromJson 는 자동 생성됨
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  /// serialization 으로 사용되는 함수
  /// _$TodoToJson 는 자동 생성됨
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}

/// 다른 JSON Model 클래스의 하위에서 사용되는 클래스들도 [@JsonSerializable] 이어야 함
@JsonSerializable()
class Location {
  double lon;
  double lat;

  Location({required this.lon, required this.lat});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
