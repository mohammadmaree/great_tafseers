import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';

class SettingsShowDialog extends StatelessWidget {
  final double width;
  final double height;
  SettingsShowDialog({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    //List<String> list =['الكهف','اسماع للصفحة كاملة','استماع للحزب','استمع للجزء'];
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      title: Center(child: Text('الاعدادات',style:TextStyle(fontSize: width*0.04,color: Color(HEX_BLACK_COLOR)),)),
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
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

            ],
          ),
        ),
      ),
    );
  }
}