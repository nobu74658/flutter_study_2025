import 'package:flutter/material.dart';
import 'package:flutter_study_2025/todos/pages/components/category_chip.dart';
import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';
import 'package:flutter_study_2025/common/styles.dart';

class AddTodoCategories extends StatelessWidget {
  const AddTodoCategories({super.key, required this.selectedCategory});

  final ValueNotifier<TodoCategoryType> selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Category',
          style: AppStyle.title,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (final category in TodoCategoryType.values)
              CategoryChip(
                onTap: () => selectedCategory.value = category,
                category: category,
                selectedCategory: selectedCategory.value,
              ),
          ],
        ),
      ],
    );
  }
}
