import 'package:flutter/material.dart';
import 'package:task_f3/presentation/components/custom_button.dart';
import 'package:task_f3/presentation/questions/question_details_screen.dart';
import '../question_class/questions.dart';
import 'get_icons.dart';

class ListItem extends StatelessWidget {
  final Question question;

  const ListItem({
    required this.question,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 60, 119, 221),
          borderRadius: BorderRadius.circular(5)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                getIconForCategory(question.questionCategory),
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.questionCategory,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              Text(question.questionText,
                  style: const TextStyle(
                    fontSize: 12,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionDetails(
                                question: question,
                              )));
                },
                icon: Icons.chevron_right,
                iconColor: Colors.blueAccent,
                color: Colors.white,
                splashColor: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
