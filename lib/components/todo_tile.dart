import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 4,
        backgroundColor: Colors.green,
      ),
      title: const Text('sample todo task'),
      subtitle: const Text('18:00'),
      trailing: Checkbox(
        value: true,
        onChanged: (value) {},
      ),
    );
  }
}
