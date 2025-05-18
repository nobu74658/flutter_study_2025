import 'package:flutter/material.dart';
import 'package:flutter_study_2025/common/styles.dart';
import 'package:intl/intl.dart';

class AddTodoSchedule extends StatelessWidget {
  const AddTodoSchedule({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
  });

  final ValueNotifier<DateTime> selectedDate;
  final ValueNotifier<TimeOfDay> selectedTime;

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('yyyy/MM/dd');
    final dateString = dateFormatter.format(selectedDate.value);
    final timeString = selectedTime.value.format(context);

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
            if (result != null) {
              selectedDate.value = result;
            }
          },
        ),
        _ScheduleContainer(
          title: 'Time',
          value: timeString,
          iconData: Icons.timer_outlined,
          onTap: () async {
            final result = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (result != null) {
              selectedTime.value = result;
            }
          },
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
