import 'package:flutter/material.dart';
import 'package:quize_app/Screens/question.dart';
import 'package:quize_app/Utils/Constant.dart';
import 'package:quize_app/Widgets/CategoryBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quizzer App"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(

                child: Text("Score : "+QuestionsAndScore.getScore.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                "Let's Play",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(141, 111, 252, 1.0),
                ),
              ),
              CategoryBox(
                  QuestionsAndScore.CATEGORIES[0],
                  const Color.fromRGBO(245, 129, 152, 1.0),
                  const Color.fromRGBO(201, 104, 94, 1.0),
                  'assets/images/bok.svg', () {
                question = QuestionsAndScore.GENERAL_QUESTIONS;
                print(QuestionsAndScore.GENERAL_QUESTIONS["questionText"]);
                print(QuestionsAndScore.GENERAL_QUESTIONS["answer"][0]["text"]);
                print(QuestionsAndScore.GENERAL_QUESTIONS["answer"][0]["score"]);
                print("object");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionPage(
                            question["questionText"],
                            question["answer"],
                            "assets/images/bok.svg")));
              }),
              CategoryBox(
                  QuestionsAndScore.CATEGORIES[1],
                  const Color.fromRGBO(141, 111, 252, 1.0),
                  const Color.fromRGBO(59, 172, 232, 1.0),
                  'assets/images/sport.svg', () {
                question = QuestionsAndScore.SPORT_QUESTIONS;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionPage(
                            question["questionText"],
                            question["answer"],
                            "assets/images/sport.svg")
                    )
                );

                print("object");
              }),
              CategoryBox(
                  QuestionsAndScore.CATEGORIES[2],
                  const Color.fromRGBO(131, 87, 146, 0.796078431372549),
                  const Color.fromRGBO(252, 189, 226, 0.6784313725490196),
                  'assets/images/travel.svg', () {
                print("object");
              })
            ],
          ),
        ));
  }
}
