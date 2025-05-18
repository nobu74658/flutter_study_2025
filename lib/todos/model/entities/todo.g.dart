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
      date: _$JsonConverterFromJson<Object, DateTime>(
          json['date'], dateTimeStringConverterConverter.fromJson),
      time: json['time'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'todoId': instance.todoId,
      'title': instance.title,
      'description': instance.description,
      'category':
          todoCategoryTypeStringConverterConverter.toJson(instance.category),
      'date': _$JsonConverterToJson<Object, DateTime>(
          instance.date, dateTimeStringConverterConverter.toJson),
      'time': instance.time,
      'isDone': instance.isDone,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
