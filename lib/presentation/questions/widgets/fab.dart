import 'package:flutter/material.dart';

import '../question_class/questions.dart';

class CustomFab extends StatelessWidget {
  final Function() onTap;
  final Color backgroundColor;
  final Color foregroundColor;
  final IconData icon;
  final List<Question> listQuestions;

  const CustomFab({
    Key? key,
    required this.onTap,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.listQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: Icon(
        icon,
      ),
    );
  }
}
