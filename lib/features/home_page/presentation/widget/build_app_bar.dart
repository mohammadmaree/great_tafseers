
import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/images.dart';
import 'package:great_tafseers/core/resource/strings.dart';
import 'package:great_tafseers/features/home_page/presentation/widget/build_default_image_icon.dart';
import 'package:great_tafseers/features/home_page/presentation/widget/build_default_show_dialog.dart';


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
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
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
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_AYALIST,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_SETTINGS,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_LIST,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image:  ICON_BOOK_MARK_LIST,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image:ICON_ADD_BOOK_MARK,
              function:(){
                //changeMark();
              },
            ),
            BuildDefaultImageIcon(
              screenWidth:screenWidth*0.091,
              screenHeight:screenHeight*0.091,
              image: ICON_SEARCH,
              function: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder:(context) => BuildDefaultShowDialog(
                    width:screenWidth,
                    height:screenHeight,
                    text:NOTE,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
