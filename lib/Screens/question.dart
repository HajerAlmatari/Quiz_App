import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quize_app/Screens/home.dart';
import 'package:quize_app/Utils/Constant.dart';

class QuestionPage extends StatefulWidget{

  String question, imagePath;
  var answers;

   QuestionPage(this.question, this.answers,this.imagePath,{Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage>{

  var selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SvgPicture.asset(widget.imagePath,
            width: 200,
            height: 200,
            ),
            const SizedBox(
              height: 40,
            ),

            Text(widget.question,
                style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(141, 111, 252, 1.0),
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            RadioListTile(
              title: Text(widget.answers[0]["text"]),
              value: widget.answers[0]["score"].toString(),
              groupValue: selectedAnswer,
              onChanged: (value){
                setState(() {
                  selectedAnswer = value;
                });
              },
            ),

            RadioListTile(
              title: Text(widget.answers[1]["text"]),
              value: widget.answers[1]["score"].toString(),
              groupValue: selectedAnswer,
              onChanged: (value){
                setState(() {
                  selectedAnswer = value;
                });
              },
            ),

            RadioListTile(
              title: Text(widget.answers[2]["text"]),
              value: widget.answers[2]["score"].toString(),
              groupValue: selectedAnswer,
              onChanged: (value){
                setState(() {
                  selectedAnswer = value;
                });
              },
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){

                if(selectedAnswer == "10"){
                  QuestionsAndScore.setScore(2);
                  EasyLoading.showSuccess("Correct Answer");
                  Future.delayed(Duration(seconds: 2), () { // <-- Delay here
                    setState(() {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                            (Route<dynamic> route) => false,
                      );
                    });
                  });
                }
                else
                  {
                    EasyLoading.showError("Wrong Answer");
                    QuestionsAndScore.setScore(-1);

                    Future.delayed(Duration(seconds: 2), () { // <-- Delay here
                      setState(() {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                              (Route<dynamic> route) => false,
                        );
                      });
                    });

                  }
                print(selectedAnswer);
                // print(widget.answers[0]["text"]);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration:  BoxDecoration(
                  color: Color.fromRGBO(141, 111, 252, 1.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text("Send",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ),

            )

          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}