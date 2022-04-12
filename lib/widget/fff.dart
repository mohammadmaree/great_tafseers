import 'package:flutter/material.dart';
import 'package:great_tafseers/resource/colors.dart';
class rrr extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  rrr({
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      title: Center(child: Text('انتبه',style:TextStyle(fontSize: width*0.05),)),
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
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(1),bottomRight: Radius.circular(1)),
                      side: BorderSide(
                          color: Color(HEX_BLACK_COLOR), width: 0.5)),
                  onPressed: () => Navigator.of(context).pop(false),
                  color: Color(HEX_WHITE_COLOR),
                  textColor: Color(HEX_BLUE_COLOR),
                  child: Text('تمام', style: TextStyle(fontSize: width * 0.035,color: Color(HEX_BLUE_COLOR),)),
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
          maxWidth: width * 0.35,
          minWidth: width * 0.35,
        ),
        child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:width*0.1),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: width * 0.03
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