import 'package:flutter/material.dart';
import 'quiz_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color kActiveColor = Colors.deepPurple;
const Color kInactiveColor = Colors.purpleAccent;

Widget customRow = Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Text(
'text',
style: GoogleFonts.prompt(
color: Colors.white,
fontSize: 20.0,
),
),
IconButton(
iconSize: 30.0,
icon: FaIcon(
Icons.check_circle,
color: Colors.white //question == Question.ONE ? kActiveColor : kInactiveColor,
),
onPressed: null,
),
],
);

