import 'package:flutter/material.dart';
import 'package:flutter_study_2025/types/todo_category_type.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.isDone,
    required this.category,
  });

  final String title;
  final DateTime date;
  final String time;
  final bool isDone;
  final TodoCategoryType category;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy/MM/dd');
    final dateString = dateFormatter.format(date);

    return ListTile(
      leading: CircleAvatar(
        radius: 4,
        backgroundColor: category.color,
      ),
      title: Text(title),
      subtitle: Text('$dateString $time'),
      trailing: Checkbox(
        value: isDone,
        onChanged: (value) {},
      ),
    );
  }
}
