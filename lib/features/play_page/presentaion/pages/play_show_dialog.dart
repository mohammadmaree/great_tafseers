import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';
import 'package:great_tafseers/core/resource/strings.dart';
import 'package:great_tafseers/features/play_page/presentaion/widget/build_button_dialog.dart';
import 'package:great_tafseers/features/play_page/presentaion/widget/build_default_check_box.dart';
import 'package:great_tafseers/features/play_page/presentaion/widget/build_default_radio.dart';

class PlayShowDialog extends StatelessWidget {
  final double width;
  final double height;
  PlayShowDialog({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    List<String> list =['الكهف',LISTEN_TO_THE_FULL_PAGE,LISTEN_TO_HIZB,LISTEN_TO_JOZA];
    String? selected;
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      title: Center(child: Text(LISTEN,style:TextStyle(fontSize: width*0.04,color: Color(HEX_BLACK_COLOR)),)),
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BuildButtonDialog(
              screenWidth:width,
              screenHeight:height,
              text:EXIT,
              function: (){
                Navigator.of(context).pop(false);
              },
            ),
            BuildButtonDialog(
              screenWidth:width,
              screenHeight:height,
              text:OK,
              function: (){
                Navigator.of(context).pop(false);
              },
            ),
          ],
        )
      ],
      content: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height * 0.45,
          maxHeight: height * 0.45,
          maxWidth: width * 0.4,
          minWidth: width * 0.4,
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height*0.01,
              ),
              Text(DESCRIPTION,style:TextStyle(fontSize: width*0.03,color: Color(HEX_BLACK_COLOR))),
              Container(
                height: 135,
                child: ListView.separated(
                    itemBuilder: (context, index) =>  BuildDefaultRadio(
                      value:'sora',
                      selected:selected,
                      text: list[index],
                      function:(){},
                      screenWidth:width,
                      screenHeight:height,
                    ),
                    separatorBuilder:(context, index) => Container(height:1.0,width:width,color: Colors.grey),
                    itemCount: 4,
                ),
              ),
              BuildDefaultCheckBox(
                text:LISTEN_AGAIN,
                value:false,
                screenHeight:height,
                screenWidth:width,
              ),
              BuildDefaultCheckBox(
                text:LISTEN_NEXT_PAGE,
                value:false,
                screenHeight:height,
                screenWidth:width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}