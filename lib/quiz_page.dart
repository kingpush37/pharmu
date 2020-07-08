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
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomCard(
                    color: Colors.blue,
                    customChild: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 385.0,
                      lineHeight: 30.0,
                      percent: 0.5,
                      backgroundColor: Colors.white,
                      linearGradient: LinearGradient(colors: [Color(0xFFCB218E), Color(0xFF6617CB)]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomCard(
                color: Colors.black,
                customChild: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        'Question 1/10',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: Colors.white,
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
                    border: Border.all(color: Color(0xFF1D1E33), width: 4.0, style: BorderStyle.solid),
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
                  border: Border.all(color: Color(0xFF1D1E33), width: 4.0, style: BorderStyle.solid),
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
                  border: Border.all(color: Color(0xFF1D1E33), width: 4.0, style: BorderStyle.solid),
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
                      'Next button',
                    ),
                    backgroundColor: Color(0xFF9B42F4),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
