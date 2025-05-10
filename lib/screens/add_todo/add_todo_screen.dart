import 'package:flutter/material.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_bottom_buttons.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_categories.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_inputs.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_schedule.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Task'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                AddTodoInputs(),
                SizedBox(height: 16),
                AddTodoCategories(),
                SizedBox(height: 16),
                AddTodoSchedule(),
              ],
            ),
          ),
          const AddTodoBottomButtons(),
        ],
      ),
    );
  }
}
