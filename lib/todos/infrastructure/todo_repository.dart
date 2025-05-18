import 'package:flutter_study_2025/main.dart';
import 'package:flutter_study_2025/todos/infrastructure/todo_repository_interface.dart';
import 'package:flutter_study_2025/todos/model/entities/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_repository.g.dart';

@Riverpod(keepAlive: true)
TodoRepositoryInterface todoRepository(TodoRepositoryRef ref) =>
    _TodoRepository();

class _TodoRepository extends TodoRepositoryInterface {
  _TodoRepository();

  @override
  List<Todo> fetch() {
    return box.values
        .map(
          (e) => Todo.fromJson({
            'todoId': e['todoId'] as String,
            'title': e['title'] as String,
            'description': e['description'] as String,
            'date': e['date'] as String,
            'time': e['time'] as String,
            'isDone': (e['isDone'] ?? false) as bool,
            'category': e['category'] as String,
          }),
        )
        .toList();
  }

  @override
  void create(Todo todo) {
    box.put(todo.todoId, todo.toJson());
  }
}
