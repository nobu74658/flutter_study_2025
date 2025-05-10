import 'package:flutter/material.dart';
import 'package:flutter_study_2025/utils/styles.dart';

class AddTodoSchedule extends StatelessWidget {
  const AddTodoSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Date', style: AppStyle.title),
            const SizedBox(height: 8),
            Material(
              color: Colors.grey.shade100,
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(width: 8),
                      Text('dd/mm/yy'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Column(),
      ],
    );
  }
}
