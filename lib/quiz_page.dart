import 'package:flutter/material.dart';


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
        children: <Widget>[
          Expanded(
            child: Row(
            children: <Widget>[
              Container(
                child: Text(
                    'Linear Progress Bar...',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
      ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'Question 1/10',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:
            Row(
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
