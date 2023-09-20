// ignore_for_file: prefer_final_fields

import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionQuiz = [
    Questions(
        q: 'Flutter is an open-source backend development framework', a: false),
    Questions(
        q: 'There are two types of widgets available to developers in Flutter',
        a: true),
    Questions(
        q: 'Firebase database allows for access to a cloud-based database provider for Flutter applications.',
        a: true),
    Questions(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Questions(
      q: 'A slug\'s blood is green.',
      a: true,
    ),
    Questions(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Questions(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questions(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Questions(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionQuiz.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionQuiz[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionQuiz[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionQuiz.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
