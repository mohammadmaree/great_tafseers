
import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';

class BuildButtonDialog extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String text;
  VoidCallback? function;

  BuildButtonDialog({
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.function,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(screenWidth*0.025),
      child: Container(
        width: screenWidth*0.25,
        height: screenHeight*0.047,
        child: MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2),bottomRight: Radius.circular(2)),
              side: BorderSide.none
          ),
          onPressed:  function,
          color: const Color(HEX_BLUE_COLOR),
          textColor:const Color(HEX_WHITE_COLOR) ,
          child: Text(text, style: TextStyle(fontSize: screenWidth * 0.045,color: Color(HEX_WHITE_COLOR),)),
        ),
      ),
    );
  }
}
