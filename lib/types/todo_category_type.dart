import 'package:flutter/material.dart';

enum TodoCategoryType {
  learn('learn', 'LRN', Icons.edit_document, Colors.orange),
  work('work', 'WORK', Icons.work, Colors.blue),
  general('general', 'GEN', Icons.home, Colors.green);

  const TodoCategoryType(this.value, this.label, this.iconData, this.color);

  final String value;
  final String label;
  final IconData iconData;
  final Color color;

  static TodoCategoryType fromValue(String categoryValue) {
    switch (categoryValue) {
      case 'learn':
        return learn;
      case 'work':
        return work;
      case 'general':
        return general;
      default:
        return learn;
    }
  }
}
