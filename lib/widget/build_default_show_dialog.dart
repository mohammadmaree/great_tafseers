import 'package:flutter/material.dart';
import 'package:great_tafseers/resource/colors.dart';
import 'package:great_tafseers/resource/strings.dart';
class BuildDefaultShowDialog extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  BuildDefaultShowDialog({
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      title: Center(child: Text(NOTICE,style:TextStyle(fontSize: width*0.06,color: Color(HEX_RED_COLOR)),)),
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
      actions: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: height * 0.045,
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2),bottomRight: Radius.circular(2)),
                      side: BorderSide.none
                  ),
                  onPressed: () => Navigator.of(context).pop(false),
                  color: Color(HEX_WHITE_COLOR),
                  textColor: Color(HEX_BLUE_COLOR),
                  child: Text(OK, style: TextStyle(fontSize: width * 0.035,color: Color(HEX_BLUE_COLOR),)),
                ),
              ),
            ),
          ],
        )
      ],
      content: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height * 0.1,
          maxHeight: height * 0.1,
          maxWidth: width * 0.2,
          minWidth: width * 0.2,
        ),
        child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:width*0.1),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: width * 0.04
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow:TextOverflow.ellipsis,
              ),
            )),
      ),
    );
  }
}