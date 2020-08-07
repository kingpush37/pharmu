import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pharm_u/componets/radio_container_button.dart';
import 'package:pharm_u/question_database.dart';
import 'componets/customCard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();

}



class _QuizPageState extends State<QuizPage> {
 QuestionDatabase database = new QuestionDatabase();
  var getAnswer;
  var quizLength;
  var answerCount = 1;
  var questionCount = 1;
  var linearIndicatorPoints;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayRandomAnswer();
    updateLinearIndicator();
  }

void displayRandomAnswer() {
  setState(() {
  getAnswer = database.getAnswer();
  });
}

  void updateLinearIndicator() {
      setState(() {
      quizLength = database.getDataBaseLength();
      linearIndicatorPoints = answerCount / quizLength;
      answerCount++;
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
                percent: linearIndicatorPoints,
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
                          'Question $questionCount',
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
            RadioContainerButton(
                title: getAnswer[0],
                value: Shuffle.FIRST,
                valueType: shuffle,
                function: (Shuffle value) {
                  setState(() {
                    shuffle = value;
                    if (getAnswer[0] == database.checkAnswer()) {
                      displayRandomAnswer();
                      updateLinearIndicator();
                      database.nextQuestion();
                      shuffle = null;

                      questionCount++;
                    }
                  });
                }
            ),
            RadioContainerButton(
                title: getAnswer[1],
                value: Shuffle.SECOND,
                valueType: shuffle,
                function: (Shuffle value) {
                  setState(() {
                    shuffle = value;
                    if (getAnswer[1] == database.checkAnswer()) {
                      displayRandomAnswer();
                      updateLinearIndicator();
                      database.nextQuestion();
                      shuffle = null;

                      questionCount++;
                    }
                  });
                }
            ),
            RadioContainerButton(
              title: getAnswer[2],
              value: Shuffle.THIRD,
              valueType: shuffle,
              function: (Shuffle value) {
                setState(() {
                  shuffle = value;
                  if (getAnswer[2] == database.checkAnswer()) {
                    displayRandomAnswer();
                    updateLinearIndicator();
                    database.nextQuestion();
                    shuffle = null;

                    questionCount++;
                  }
                });
              }
            ),
            SizedBox(
              height: 25.0,
            ),
            // ***Next button***
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                setState(() {
//                  database.nextQuestion();
//                  answerList();
//                  shuffle = null;
//                  count++;
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
















