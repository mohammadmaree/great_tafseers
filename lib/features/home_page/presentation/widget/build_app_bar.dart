
import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/images.dart';
import 'package:great_tafseers/core/resource/strings.dart';
import 'package:great_tafseers/features/home_page/presentation/widget/build_default_image_icon.dart';
import 'package:great_tafseers/features/play_page/presentaion/pages/play_show_dialog.dart';
import 'package:great_tafseers/features/settings_page/presentaion/pages/settings_page.dart';


class BuildAppBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildAppBar({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_PLAY_END,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => PlayShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_PLAY_ALL,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => PlayShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_AYALIST,
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_SETTINGS,
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_LIST,
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image:  ICON_BOOK_MARK_LIST,
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image:ICON_ADD_BOOK_MARK,
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_SEARCH,
            ),
          ],
        ),
      ],
    );
  }
}
