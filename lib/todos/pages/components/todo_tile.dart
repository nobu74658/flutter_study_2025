import 'package:flutter/material.dart';
import 'package:flutter_study_2025/main.dart';
import 'package:flutter_study_2025/todos/model/entities/todo.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    required this.todo,
    super.key,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        final newTodo = todo.copyWith(isDone: !todo.isDone);
        box.put(todo.todoId, newTodo.toJson());
      },
      leading: CircleAvatar(
        radius: 4,
        backgroundColor: todo.category.color,
      ),
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text('${todo.date} ${todo.time}'),
      trailing: Checkbox(
        value: todo.isDone,
        onChanged: (value) {},
      ),
    );
  }
}
