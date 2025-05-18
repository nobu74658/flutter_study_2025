import 'package:flutter_study_2025/todos/infrastructure/todo_repository.dart';
import 'package:flutter_study_2025/todos/infrastructure/todo_repository_interface.dart';
import 'package:flutter_study_2025/todos/model/entities/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_manager.g.dart';

abstract class TodoManagerInterface {
  List<Todo> fetch();
  void create(Todo todo);
}

@riverpod
TodoManagerInterface todoManager(
  TodoManagerRef ref,
) =>
    _TodoManager(repository: ref.watch(todoRepositoryProvider));

class _TodoManager extends TodoManagerInterface {
  _TodoManager({required this.repository});

  final TodoRepositoryInterface repository;

  @override
  List<Todo> fetch() => repository.fetch();

  @override
  void create(Todo todo) => repository.create(todo);
}
