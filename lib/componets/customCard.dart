import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final Widget customChild;
  final Function onPressed;
  final BoxBorder borderStyle;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CustomCard({@required this.color, this.customChild, this.onPressed, this.borderStyle, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: borderStyle,
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: customChild,
    );
  }
}
