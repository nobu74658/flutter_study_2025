import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            children: [
              Icon(Icons.edit_document),
              SizedBox(width: 8),
              Text('LRN'),
            ],
          ),
        ),
      ),
    );
  }
}
