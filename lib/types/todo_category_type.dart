import 'package:flutter/material.dart';

enum TodoCategoryType {
  learn('learn', 'LRN', Icons.edit_document),
  work('work', 'WORK', Icons.work),
  general('general', 'GEN', Icons.home);

  const TodoCategoryType(this.value, this.label, this.iconData);

  final String value;
  final String label;
  final IconData iconData;
}
