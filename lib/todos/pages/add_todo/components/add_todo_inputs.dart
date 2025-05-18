import 'package:flutter/material.dart';

class AddTodoInputs extends StatelessWidget {
  const AddTodoInputs({
    super.key,
    required this.titleTextController,
    required this.descriptionTextController,
  });

  final TextEditingController titleTextController;
  final TextEditingController descriptionTextController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          _TextField('Title', titleTextController),
          const SizedBox(height: 8),
          _TextField('Description', descriptionTextController),
        ],
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField(this.label, this.textController);

  final String label;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        label: Text(label),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
