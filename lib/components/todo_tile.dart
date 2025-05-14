import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.isDone,
  });

  final String title;
  final DateTime date;
  final String time;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy/MM/dd');
    final dateString = dateFormatter.format(date);

    return ListTile(
      leading: const CircleAvatar(
        radius: 4,
        backgroundColor: Colors.green,
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
