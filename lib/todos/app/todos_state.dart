import 'package:flutter_study_2025/todos/app/todo_manager.dart';
import 'package:flutter_study_2025/todos/model/entities/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_state.g.dart';

@riverpod
class TodosState extends _$TodosState {
  @override
  List<Todo> build() {
    final manager = ref.watch(todoManagerProvider);

    return manager.fetch();
  }
}
