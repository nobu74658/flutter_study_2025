import 'package:flutter/material.dart';
import 'package:flutter_study_2025/screens/add_todo/add_todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddTodoScreen(),
    );
  }
}
