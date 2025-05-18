import 'package:flutter_study_2025/todos/model/entities/todo.dart';

abstract class TodoRepositoryInterface {
  TodoRepositoryInterface();

  List<Todo> fetch();
  void create(Todo todo);
}
