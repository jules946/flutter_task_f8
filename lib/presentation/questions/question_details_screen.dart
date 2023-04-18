import 'package:flutter/material.dart';

import 'question_class/questions.dart';

class QuestionDetails extends StatefulWidget {
  final Question question;

  const QuestionDetails({
    required this.question,
    Key? key,
  }) : super(key: key);

  @override
  State<QuestionDetails> createState() => _QuestionDetailsState();
}

class _QuestionDetailsState extends State<QuestionDetails> {
  bool _showHint1 = false;
  bool _showHint2 = false;
  bool _showAnswer = false;

  void _toggleHint1() {
    setState(() {
      _showHint1 = !_showHint1;
    });
  }

  void _toggleHint2() {
    setState(() {
      _showHint2 = !_showHint2;
    });
  }

  void _toggleAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.question.questionText),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category: ${widget.question.questionCategory}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Question: ${widget.question.questionText}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            _showHint1
                ? Text(
                    'Hint 1: ${widget.question.questionHint1}',
                    style: const TextStyle(fontSize: 16),
                  )
                : const SizedBox(),
            _showHint2
                ? Text(
                    'Hint 2: ${widget.question.questionHint2}',
                    style: const TextStyle(fontSize: 16),
                  )
                : const SizedBox(),
            _showAnswer
                ? Text(
                    'Answer: ${widget.question.questionAnswer}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  )
                : const SizedBox(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleHint1,
              child: Text(_showHint1 ? 'Hide Hint 1' : 'Show Hint 1'),
            ),
            ElevatedButton(
              onPressed: _toggleHint2,
              child: Text(_showHint2 ? 'Hide Hint 2' : 'Show Hint 2'),
            ),
            ElevatedButton(
              onPressed: _toggleAnswer,
              child: Text(_showAnswer ? 'Hide Answer' : 'Show Answer'),
            ),
          ],
        ),
      ),
    );
  }
}
