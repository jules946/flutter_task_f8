import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_f3/presentation/questions/question_class/questions.dart';
import 'package:task_f3/presentation/questions/question_details_screen.dart';
import 'package:task_f3/presentation/questions/widgets/fab.dart';
import 'package:task_f3/presentation/questions/question_class/question_generation.dart';
import 'widgets/list_item.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  QuestionsScreenState createState() => QuestionsScreenState();
}

class QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Question> listQuestions = addQuestions();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Task f8',
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
            itemCount: listQuestions.length,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              return ListItem(
                question: listQuestions[index],
              );
            },
          ),
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => CustomFab(
          listQuestions: listQuestions,
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          icon: Icons.question_mark,
          onTap: () {
            int randomIndex = Random().nextInt(listQuestions.length);
            Question selectedQuestion = listQuestions[randomIndex];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuestionDetails(
                  question: selectedQuestion,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
