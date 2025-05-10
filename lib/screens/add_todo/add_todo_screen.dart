import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_bottom_buttons.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_categories.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_inputs.dart';
import 'package:flutter_study_2025/screens/add_todo/components/add_todo_schedule.dart';
import 'package:flutter_study_2025/types/todo_category_type.dart';

class AddTodoScreen extends HookWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleTextController = useTextEditingController();
    final descriptionTextController = useTextEditingController();
    final selectedCategory = useState(TodoCategoryType.learn);
    final selectedDate = useState(DateTime.now());

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
                  descriptionTextController: descriptionTextController,
                ),
                const SizedBox(height: 16),
                AddTodoCategories(selectedCategory: selectedCategory),
                const SizedBox(height: 16),
                AddTodoSchedule(selectedDate: selectedDate),
              ],
            ),
          ),
          const AddTodoBottomButtons(),
        ],
      ),
    );
  }
}
