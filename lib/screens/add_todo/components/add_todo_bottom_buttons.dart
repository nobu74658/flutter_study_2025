import 'package:flutter/material.dart';

class AddTodoBottomButtons extends StatelessWidget {
  const AddTodoBottomButtons({super.key, required this.onCreate});

  final void Function() onCreate;

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
                child: const Text('cancel'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton(
                onPressed: onCreate,
                child: const Text('create'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
