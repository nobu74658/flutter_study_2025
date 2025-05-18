// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
      todoId: json['todoId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: todoCategoryTypeStringConverterConverter
          .fromJson(json['category'] as String),
      date: DateTime.parse(json['date'] as String),
      time: json['time'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'todoId': instance.todoId,
      'title': instance.title,
      'description': instance.description,
      'category':
          todoCategoryTypeStringConverterConverter.toJson(instance.category),
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      'isDone': instance.isDone,
    };
