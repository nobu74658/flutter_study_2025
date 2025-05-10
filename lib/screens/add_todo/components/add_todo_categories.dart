import 'package:flutter/material.dart';
import 'package:flutter_study_2025/components/category_chip.dart';
import 'package:flutter_study_2025/utils/styles.dart';

class AddTodoCategories extends StatelessWidget {
  const AddTodoCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: AppStyle.title,
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryChip(
              label: 'LRN',
              iconData: Icons.edit_document,
            ),
            CategoryChip(
              label: 'WRK',
              iconData: Icons.work,
            ),
            CategoryChip(
              label: 'GEN',
              iconData: Icons.home,
            ),
          ],
        ),
      ],
    );
  }
}
