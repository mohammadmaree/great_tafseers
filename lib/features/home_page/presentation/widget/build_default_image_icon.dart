import 'package:flutter/material.dart';

class BuildDefaultImageIcon extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  final VoidCallback function;
  BuildDefaultImageIcon({
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
    required this.function,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        function();
        },
      child: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth*0.18,screenHeight*0.1,screenWidth*0.18,0.0),
        child: Container(
          width: screenWidth,
          height: screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              //  fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}