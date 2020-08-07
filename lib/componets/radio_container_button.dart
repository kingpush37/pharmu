

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

  enum Shuffle {
  FIRST,
  SECOND,
  THIRD,
}
  Shuffle shuffle;

class RadioContainerButton extends StatelessWidget {
  final String title;
  final Function function;
  final Shuffle value;
  final Shuffle valueType;
  RadioContainerButton({this.title, this.function, this.value, this.valueType});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          title: Text(title,
            style: GoogleFonts.prompt(
              color: Colors.white,
              fontSize: 25.0,
            ),),
          value: value,
          groupValue: valueType,
          onChanged: function,),
    );
  }
}
