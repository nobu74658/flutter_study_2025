import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_2025/todos/app/todos_state.dart';
import 'package:flutter_study_2025/todos/pages/components/todo_tile.dart';
import 'package:go_router/go_router.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(todosStateProvider);
            },
            icon: const Icon(Icons.replay_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          for (final todo in todos) TodoTile(todo: todo),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () => context.push('/create'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
