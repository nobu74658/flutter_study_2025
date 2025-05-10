import 'package:flutter/material.dart';
import 'package:flutter_study_2025/components/todo_tile.dart';

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
