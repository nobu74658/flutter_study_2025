import 'package:flutter/material.dart';
import 'package:flutter_study_2025/utils/styles.dart';

class AddTodoSchedule extends StatelessWidget {
  const AddTodoSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _ScheduleContainer(
          title: 'Date',
          value: 'dd/mm/yyyy',
          iconData: Icons.calendar_month_rounded,
        ),
        _ScheduleContainer(
          title: 'Time',
          value: 'hh:mm',
          iconData: Icons.timer_outlined,
        ),
      ],
    );
  }
}

class _ScheduleContainer extends StatelessWidget {
  const _ScheduleContainer({
    required this.title,
    required this.value,
    required this.iconData,
  });

  final String title;
  final String value;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppStyle.title),
            const SizedBox(height: 8),
            Material(
              color: Colors.grey.shade100,
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      Icon(iconData),
                      const SizedBox(width: 8),
                      Text(value),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
