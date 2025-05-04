import 'package:flutter/material.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Task'),
      ),
      body: ListView(
        children: [
          Container(
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
          ),
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
