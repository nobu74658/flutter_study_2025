import 'package:flutter/material.dart';
import 'package:flutter_study_2025/common/rooter.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<Map<String, dynamic>> box;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  box = await Hive.openBox('todos');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
