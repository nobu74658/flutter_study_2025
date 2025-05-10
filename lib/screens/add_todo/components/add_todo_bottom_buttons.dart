import 'package:flutter/material.dart';

class AddTodoBottomButtons extends StatelessWidget {
  const AddTodoBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('create'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text('create'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
