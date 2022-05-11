import 'package:flutter/material.dart';
import 'package:great_tafseers/core/resource/colors.dart';

class BuildDefaultRadio extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final String text;
  final String value;
  final String? selected;
  VoidCallback? function;
  BuildDefaultRadio({
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.value,
    required this.selected,
    required this.function,
  });

  @override
  State<BuildDefaultRadio> createState() => _BuildDefaultRadioState();
}

class _BuildDefaultRadioState extends State<BuildDefaultRadio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Radio(
            value: widget.value,
            groupValue:widget.selected,
            onChanged: (String? value){
              print(value);
              setState(() {
                widget.selected!=value;
              });
            },
          ),
          Text(widget.text,style:TextStyle(fontSize: widget.screenWidth*0.05,color: Color(HEX_BLACK_COLOR))),
        ],
      ),
    );
  }
}
