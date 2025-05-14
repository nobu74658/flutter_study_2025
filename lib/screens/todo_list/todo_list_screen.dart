import 'package:flutter/material.dart';
import 'package:flutter_study_2025/components/todo_tile.dart';
import 'package:flutter_study_2025/main.dart';
import 'package:flutter_study_2025/types/todo_category_type.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = box.listenable();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: ValueListenableBuilder(
        valueListenable: todos,
        builder: (context, value, _) {
          return ListView(
            children: [
              for (final todo in value.values.toList())
                TodoTile(
                  todoId: todo['todoId'] as String,
                  title: todo['title'] as String,
                  description: todo['description'] as String,
                  date: todo['date'] as DateTime,
                  time: todo['time'] as String,
                  isDone: (todo['isDone'] ?? false) as bool,
                  category:
                      TodoCategoryType.fromValue(todo['category'] as String),
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () => context.push('/create'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
