import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pharm_u/question_database.dart';
import 'constants.dart';
import 'customCard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();

}


 QuestionDatabase database = new QuestionDatabase();
  int quizLength = database.getDataBaseLength();

  var answerCount = 1;
  var count = 1;
  var points = 2;

 String question;
  Shuffle answer;



  enum Question {
    ONE,
    TWO,
    THREE,
  }

  enum Shuffle {
    FIRST,
    SECOND,
    THIRD,
  }

Shuffle shuffle;

class _QuizPageState extends State<QuizPage> {
  Color selectedColor;
  bool isSelected = false;
  var getAnswer;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    answerList();
  }

void answerList() {
  setState(() {
  getAnswer = database.getAnswer();
  });
}

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
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
                          style:GoogleFonts.prompt(
                            color: Colors.white,
                            fontSize: 28.0,
                          ),
                        ),
                        Text(
                          '/$quizLength',
                          style: GoogleFonts.prompt(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(FontAwesomeIcons.list,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(6.0),
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
                      style: GoogleFonts.prompt(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
           /***********
           * Answers wont work
            **********/
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: RadioListTile<Shuffle>(
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.deepPurpleAccent,
                  title: Text(getAnswer[0],
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  value: Shuffle.FIRST,
                  groupValue: shuffle,
                  selected: true,
                  onChanged: (Shuffle value) {
                setState(() {
                  shuffle = value;
                });
              }),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: RadioListTile<Shuffle>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: Colors.deepPurpleAccent,
                  title: Text(getAnswer[1],
                    style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),),
                  value: Shuffle.SECOND,
                  groupValue: shuffle,
                  onChanged: (Shuffle value) {
                    setState(() {
                      shuffle = value;
                    });
                  }),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: RadioListTile<Shuffle>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: Colors.transparent,
                  title: Text(getAnswer[2],
                    style: GoogleFonts.prompt(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),),
                  value: Shuffle.THIRD,
                  groupValue: shuffle,
                  onChanged: (Shuffle value) {
                    setState(() {
                      shuffle = value;
                    });
                  }),
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
                  answerList();
                  answerCount++;
                  shuffle = null;
                  count++;
                  points += 2;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 110.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFCB218E),
                    Color(0xFF6617CB),
                  ]),
                ),
                child: Text('Next',
                  style: GoogleFonts.prompt(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
      ],
        ),
      ),
    );
  }
}

//Column(
//children: <Widget>[
//ListView.builder(
//shrinkWrap: true,
//itemCount: getAnswer.length,
//itemBuilder: (context, index) {
//return Card(
//shape: StadiumBorder(side: BorderSide(color: Colors.deepPurpleAccent)),
//child: ListTile(
//title: Text(getAnswer[index]),
//trailing: Radio(value: null, groupValue: null, onChanged: null),
//),
//);
//},
//),
//],
//),












