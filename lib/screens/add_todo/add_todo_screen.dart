import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_bottom_buttons.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_categories.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_inputs.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_schedule.dart';

class AddTodoScreen extends HookWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleTextController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Task'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                AddTodoInputs(
                  titleTextController: titleTextController,
                ),
                const SizedBox(height: 16),
                const AddTodoCategories(),
                const SizedBox(height: 16),
                const AddTodoSchedule(),
              ],
            ),
          ),
          const AddTodoBottomButtons(),
        ],
      ),
    );
  }
}
