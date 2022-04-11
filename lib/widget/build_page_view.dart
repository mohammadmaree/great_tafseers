import 'package:flutter/material.dart';
import 'package:great_tafseers/resource/images.dart';
import 'package:great_tafseers/widget/build_default_image.dart';
import 'package:great_tafseers/widget/build_default_text.dart';

class BuildPageView extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String page;

  BuildPageView({
    required this.screenWidth,
    required this.screenHeight,
    required this.page,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top:screenHeight*0.12,
          bottom:screenHeight*0.05,
          left:screenWidth*0.08,
          right:screenWidth*0.08,
          child: BuildDefaultImage(
            image:page,
            screenWidth:screenWidth*084,
            screenHeight:screenHeight*0.87,
          ),
        ),
      ],
    );
  }
}
