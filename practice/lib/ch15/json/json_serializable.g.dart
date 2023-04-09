// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      todoId: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.todoId,
      'title': instance.title,
      'completed': instance.completed,
      'location': instance.location.toJson(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
