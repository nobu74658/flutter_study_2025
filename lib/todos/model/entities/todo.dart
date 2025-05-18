import 'package:flutter/material.dart';
import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';

class Todo {
  Todo({
    required this.todoId,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.time,
    required this.isDone,
  });

  final String todoId;
  final String title;
  final String description;
  final TodoCategoryType category;
  final DateTime date;
  final TimeOfDay time;
  final bool isDone;
}
