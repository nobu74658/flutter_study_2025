import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const todoCategoryTypeStringConverterConverter =
    TodoCategoryTypeStringConverterConverter();

class TodoCategoryTypeStringConverterConverter
    implements JsonConverter<TodoCategoryType, String> {
  const TodoCategoryTypeStringConverterConverter();

  @override
  TodoCategoryType fromJson(String json) => TodoCategoryType.fromValue(json);

  @override
  String toJson(TodoCategoryType object) => object.value;
}
