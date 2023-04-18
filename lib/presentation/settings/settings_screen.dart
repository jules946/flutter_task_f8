import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
      )),
    );
  }
}
