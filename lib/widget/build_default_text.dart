import 'package:flutter/material.dart';

class BuildDefaultText extends StatelessWidget {
  final String text;
  final int color;
  final double fontSize;
  final bool bold;
  BuildDefaultText({
    required this.text,
    required this.color,
    required this.fontSize,
    required this.bold
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color:Color(color),
          fontSize:fontSize,
          fontWeight:bold?FontWeight.bold:FontWeight.normal
      ),
    );
  }
}