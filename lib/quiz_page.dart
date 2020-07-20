import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pharm_u/question_database.dart';
import 'customCard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

  var database = new QuestionDatabase();
  var random = new Random();
  int quizLength = database.getDataBaseLength();
  int answerCount = 1;
  int count = 1;
  int points = 2;
  const Color kActiveColor = Colors.deepPurple;
  const Color kInactiveColor = Colors.purpleAccent;
  Question question;

  enum Question {
    ONE,
    TWO,
    THREE,
  }




class _QuizPageState extends State<QuizPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 330.0,
                lineHeight: 40.0,
                percent: answerCount / quizLength,
                backgroundColor: Colors.white60,
                linearGradient: LinearGradient(
                    colors: [Color(0xFFCB218E), Color(0xFF6617CB)]),
                center: Icon(FontAwesomeIcons.userNurse,
                  color: Colors.white,
                  size: 32.0,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Icon(
                    FontAwesomeIcons.heartbeat,
                    color: Colors.deepPurple,
                    size: 36.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomCard(
              color: Colors.transparent,
              customChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      'Question $count',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                      '/$quizLength',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white60,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                endIndent: 12.0,
                height: 2.0,
                thickness: 1.0,
                color: Color(0xFF6617CB),
              ),
            ),
            Container(
              height: 200.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFF212121).withOpacity(0.3),
              ),
             margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      //Main question text
                      database.getQuestion(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                question = Question.ONE;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      database.getAnswer2(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: FaIcon(
                        Icons.check_circle,
                        color: question == Question.ONE ? kActiveColor : kInactiveColor,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                  question = Question.TWO;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      database.getAnswer(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: FaIcon(
                        Icons.check_circle,
                        color: question == Question.TWO ? kActiveColor : kInactiveColor,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                  question = Question.THREE;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      database.getAnswer3(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: FaIcon(
                        Icons.check_circle,
                        color: question == Question.THREE ? kActiveColor : kInactiveColor,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            // ***Next button***
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  database.nextQuestion();
                  answerCount++;
                  count++;
                  points += 2;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 180.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFCB218E),
                    Color(0xFF6617CB),
                  ]),
                ),
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





