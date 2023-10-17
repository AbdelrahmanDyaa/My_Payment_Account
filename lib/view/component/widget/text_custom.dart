import 'package:flutter/material.dart';
// ignore: must_be_immutable
class TextCustom extends StatelessWidget {
  final String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;

    TextCustom({ this.color,  this.fontSize,  this.fontWeight,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,

      ),
    );
  }
}
