import 'package:flutter/material.dart';

enum TodoCategoryType {
  learn('LRN', Icons.edit_document),
  work('WORK', Icons.work),
  general('GEN', Icons.home);

  const TodoCategoryType(this.label, this.iconData);

  final String label;
  final IconData iconData;
}
