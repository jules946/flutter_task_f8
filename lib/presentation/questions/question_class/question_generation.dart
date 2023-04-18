import 'questions.dart';

List<Question> addQuestions() {
  // Create a list to hold all the questions
  List<Question> allQuestions = [];
  int qnum = 0;
  // Create a list of qiestions and all attributes
  allQuestions.add(Question(
    questionCategory: 'Geography',
    questionText: 'What is the capital of Italy?',
    questionHint1: 'Hint: It starts with "R"',
    questionHint2: 'Hint: It rhymes with "ome"',
    questionAnswer: 'Rome',
    questionID: qnum,
  ));
  qnum++;
  allQuestions.add(Question(
    questionCategory: 'History',
    questionText: 'Who was the first president of the United States?',
    questionHint1: 'Hint: His face is on the one dollar bill',
    questionHint2: 'Hint: His last name is the same as a famous inventor',
    questionAnswer: 'George Washington',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'Science',
    questionText: 'What is the chemical symbol for gold?',
    questionHint1: 'Hint: It starts with "A"',
    questionHint2: 'Hint: It has 79 protons',
    questionAnswer: 'Au',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'Geography',
    questionText: 'What is the highest mountain in Africa?',
    questionHint1: 'Hint: It starts with "K"',
    questionHint2: 'Hint: It is located in Tanzania',
    questionAnswer: 'Kilimanjaro',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'History',
    questionText: 'What year did World War II end?',
    questionHint1: 'Hint: It was in the mid-1940s',
    questionHint2: 'Hint: The United States dropped atomic bombs on Japan',
    questionAnswer: '1945',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'Science',
    questionText: 'What is the smallest unit of life?',
    questionHint1: 'Hint: It starts with "C"',
    questionHint2: 'Hint: It is the building block of all living things',
    questionAnswer: 'Cell',
    questionID: qnum,
  ));
  qnum++;
  allQuestions.add(Question(
    questionCategory: 'Geography',
    questionText: 'What is the largest country in the world by land area?',
    questionHint1: 'Hint: It spans two continents',
    questionHint2: 'Hint: Its capital is Moscow',
    questionAnswer: 'Russia',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'History',
    questionText: 'What was the name of the first man to walk on the moon?',
    questionHint1: 'Hint: His first name was Neil',
    questionHint2:
        'Hint: He made the famous statement "One small step for man, one giant leap for mankind"',
    questionAnswer: 'Neil Armstrong',
    questionID: qnum,
  ));
  qnum++;

  allQuestions.add(Question(
    questionCategory: 'Science',
    questionText: 'What is the largest organ in the human body?',
    questionHint1: 'Hint: It is on the outside of the body',
    questionHint2: 'Hint: It has a protective function',
    questionAnswer: 'Skin',
    questionID: qnum,
  ));
  qnum++;

  return allQuestions;
}
