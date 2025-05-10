import 'package:flutter/material.dart';

class AddTodoInputs extends StatelessWidget {
  const AddTodoInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(
        children: [
          _TextField('Title'),
          SizedBox(height: 8),
          _TextField('Description'),
        ],
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        label: Text(label),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
