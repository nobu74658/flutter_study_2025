import 'package:flutter/material.dart';
import 'package:flutter_study_2025/todos/pages/add_todo/add_todo_screen.dart';
import 'package:flutter_study_2025/todos/pages/todo_list/todo_list_screen.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: TodoListScreen());
      },
    ),
    GoRoute(
      path: '/create',
      pageBuilder: (context, state) {
        return const MaterialPage(child: AddTodoScreen());
      },
    ),
  ],
);
