import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';

class BuildDefaultCheckBox extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String text;
  final bool value;
  BuildDefaultCheckBox({
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth*0.1,
      child: CheckboxListTile(
        title:Text(text,style:TextStyle(fontSize: screenWidth*0.038,color: Color(HEX_BLACK_COLOR))),
        onChanged:(isSelected){
        },
        value:value,
      ),
    );
  }
}
