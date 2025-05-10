import 'package:flutter/material.dart';
import 'package:flutter_study_2025/types/todo_category_type.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.category,
    required this.selectedCategory,
    required this.onTap,
  });

  final TodoCategoryType category;
  final TodoCategoryType selectedCategory;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = category == selectedCategory;
    return Material(
      color: isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            children: [
              Icon(category.iconData),
              const SizedBox(width: 8),
              Text(category.label),
            ],
          ),
        ),
      ),
    );
  }
}
