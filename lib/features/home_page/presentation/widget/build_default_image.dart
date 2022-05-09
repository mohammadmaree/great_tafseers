import 'package:flutter/material.dart';

class BuildDefaultImage extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  BuildDefaultImage({
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
            fit: BoxFit.fill
        ),
      ),
    );
  }
}