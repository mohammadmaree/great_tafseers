import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';

class BuildSettingsButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String text;
  final bool isIcon;
  BuildSettingsButton({
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.isIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03,vertical: screenWidth*0.028),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isIcon?Icon(Icons.arrow_back_ios_outlined,color: Color(HEX_GRAY_COLOR),size: screenWidth*0.045):
          Container(),
          Text(text,style: TextStyle(fontSize: screenWidth*0.04)),
        ],),
    );
  }
}
