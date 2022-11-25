
import 'dart:math';

class QuestionsAndScore {

  static int _score = 0;

  static int get getScore => _score;

  // static set setScore(int value) {
  //   _score += value;
  // }

  static const List<String> CATEGORIES = ["General Question","Sport Question", "Countries Question"];

  static const  _SPORT_QUESTIONS = [
    {
      'questionText': 'Q1. The Olympics are held every how many hears?',
      'answer': [
        {'text': '4 years', 'score': 10},
        {'text': '2 years', 'score': 0},
        {'text': '6 years', 'score': 3},
      ],
    },
    {
      'questionText': 'What color are the goalposts in football?',
      'answer': [
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 3},
        {'text': 'Yellow', 'score': 10},
      ],
    },
    {
      'questionText': 'How Long is the marathon?',
      'answer': [
        {'text': '27.2 miles', 'score': 0},
        {'text': '26.2 miles', 'score': 10},
        {'text': '28.2 miles', 'score': 3},
      ],
    },
  ];

  static const  _GENERAL_QUESTIONS = [
    {
      'questionText': 'Who is the inventor of light?',
      'answer': [
        {'text': 'Thomas Edison', 'score': 10},
        {'text': 'Jhon Dunlop', 'score': 0},
        {'text': 'Isaac Newton', 'score': 3},
      ],
    },
    {
      'questionText': 'For which of the following is Nobel Prize awarded?',
      'answer': [
        {'text': 'Physics and Chemistry', 'score': 0},
        {'text': 'physiology or Medicine', 'score': 3},
        {'text': 'All of the above', 'score': 10},
      ],
    },
    {
      'questionText': 'Which of the following is not a programming language?',
      'answer': [
        {'text': 'Python', 'score': 0},
        {'text': 'HTML', 'score': 10},
        {'text': 'Java', 'score': 3},
      ],
    },
  ];

  static get SPORT_QUESTIONS {
    int val = Random().nextInt(3);
    return  _SPORT_QUESTIONS[val];
  }
  static get GENERAL_QUESTIONS {
    int val = Random().nextInt(3);
    return  _GENERAL_QUESTIONS[val];
  }

  static void setScore(int i) {
    _score += i;
  }

} //