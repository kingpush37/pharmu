import 'package:flutter/material.dart';
import 'quiz_page.dart';

void main() {
  runApp(PharmU());
}

class PharmU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}
