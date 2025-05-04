import 'package:flutter/material.dart';
import 'package:flutter_study_2025/components/category_chip.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Task'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
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
          const SizedBox(height: 16),
          const Text(
            'Category',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
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
