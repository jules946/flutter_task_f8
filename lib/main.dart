import 'package:flutter/material.dart';
import 'root_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Task f8';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.red, // Setting the primary color for the app
      ),
      home: const RootBottomNavigation(),
    );
  }
}
