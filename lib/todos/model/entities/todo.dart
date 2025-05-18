import 'package:flutter_study_2025/todos/model/converter/todo_category_type_string_converter.dart';
import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required String todoId,
    required String title,
    required String description,
    @todoCategoryTypeStringConverterConverter
    required TodoCategoryType category,
    required DateTime date,
    required String time,
    required bool isDone,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
