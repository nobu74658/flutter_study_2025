import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_study_2025/todos/app/todo_manager.dart';
import 'package:flutter_study_2025/todos/app/todos_state.dart';
import 'package:flutter_study_2025/todos/model/entities/todo.dart';
import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';
import 'package:flutter_study_2025/todos/pages/add_todo/components/add_todo_bottom_buttons.dart';
import 'package:flutter_study_2025/todos/pages/add_todo/components/add_todo_categories.dart';
import 'package:flutter_study_2025/todos/pages/add_todo/components/add_todo_inputs.dart';
import 'package:flutter_study_2025/todos/pages/add_todo/components/add_todo_schedule.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class AddTodoScreen extends HookConsumerWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormatter = DateFormat('yyyy/MM/dd');

    final titleTextController = useTextEditingController();
    final descriptionTextController = useTextEditingController();
    final selectedCategory = useState(TodoCategoryType.learn);
    final selectedDate = useState(DateTime.now());
    final selectedTime = useState(TimeOfDay.now());

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
                AddTodoSchedule(
                  selectedDate: selectedDate,
                  selectedTime: selectedTime,
                ),
              ],
            ),
          ),
          AddTodoBottomButtons(
            onCreate: () {
              final todoId = const Uuid().v4();
              final todo = Todo(
                todoId: todoId,
                title: titleTextController.text,
                description: descriptionTextController.text,
                category: selectedCategory.value,
                date: dateFormatter.format(selectedDate.value),
                time: selectedTime.value.format(context),
                isDone: false,
              );
              ref.read(todoManagerProvider).create(todo);
              ref.invalidate(todosStateProvider);

              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
