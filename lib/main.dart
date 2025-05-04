import 'package:flutter/material.dart';
import 'package:flutter_study_2025/components/todo_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: ListView(
        children: const [
          TodoTile(),
          TodoTile(),
          TodoTile(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  const _CustomText({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    print('build: $index');
    return const Text('設定項目');
  }
}
