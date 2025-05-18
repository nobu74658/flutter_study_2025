import 'package:flutter/material.dart';
import 'package:flutter_study_2025/main.dart';
import 'package:flutter_study_2025/todos/model/types/todo_category_type.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.todoId,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.isDone,
    required this.category,
  });

  final String todoId;
  final String title;
  final String description;
  final DateTime date;
  final String time;
  final bool isDone;
  final TodoCategoryType category;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy/MM/dd');
    final dateString = dateFormatter.format(date);

    return ListTile(
      onTap: () {
        box.put(todoId, {
          'todoId': todoId,
          'title': title,
          'description': description,
          'category': category.value,
          'date': date,
          'time': time,
          'isDone': !isDone,
        });
      },
      leading: CircleAvatar(
        radius: 4,
        backgroundColor: category.color,
      ),
      title: Text(
        title,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text('$dateString $time'),
      trailing: Checkbox(
        value: isDone,
        onChanged: (value) {},
      ),
    );
  }
}
