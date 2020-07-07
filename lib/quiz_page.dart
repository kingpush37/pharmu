import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customCard.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF9B42F4),
        title: Text(
          'Pharm U',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    color: Color(0xFF1D1E33),
                    customChild: LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 300.0,
                      lineHeight: 30.0,
                      percent: 0.5,
                      backgroundColor: Colors.white,
                      progressColor: Color(0xFF9B42F4),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              color: Color(0xFF1D1E33),
              customChild: Text('Question 1/10'),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'What is the brand name for Tizanidine?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Multiple Choice Answer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Multiple Choice Answer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Multiple Choice Answer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
