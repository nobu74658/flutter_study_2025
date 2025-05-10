import 'package:flutter/material.dart';
import 'package:flutter_study_2025/utils/styles.dart';
import 'package:intl/intl.dart';

class AddTodoSchedule extends StatelessWidget {
  const AddTodoSchedule({super.key, required this.selectedDate});

  final ValueNotifier<DateTime> selectedDate;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy/MM/dd');
    final dateString = dateFormatter.format(selectedDate.value);

    return Row(
      children: [
        _ScheduleContainer(
          title: 'Date',
          value: dateString,
          iconData: Icons.calendar_month_rounded,
          onTap: () async {
            final result = await showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            print(result);
          },
        ),
        _ScheduleContainer(
          title: 'Time',
          value: 'hh:mm',
          iconData: Icons.timer_outlined,
          onTap: () {},
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
    required this.onTap,
  });

  final String title;
  final String value;
  final IconData iconData;
  final void Function() onTap;

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
                onTap: onTap,
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
