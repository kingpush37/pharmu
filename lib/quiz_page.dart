import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'customCard.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
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
              padding: const EdgeInsets.all(9.0),
              child: LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 345.0,
                lineHeight: 30.0,
                percent: 0.5,
                backgroundColor: Colors.white,
                linearGradient: LinearGradient(colors: [Color(0xFFCB218E), Color(0xFF6617CB)]),
                trailing: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Icon(
                    Icons.local_hospital,
                    color: Color(0xFFCB218E),
                    size: 36.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomCard(
              color: Colors.black,
              customChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                        'Question 1',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white60,
                      ),
                    ),
                    //TODO text baseline
                    Text(
                      '/10',
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
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'What is the brand name for Tizanidine?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                      'Multiple Choice Answer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Multiple Choice Answer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Multiple Choice Answer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  onPressed: () {
                    /**/
                  },
                  label: Text(
                    'Next',
                  ),
                  backgroundColor: Color(0xFF9B42F4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


