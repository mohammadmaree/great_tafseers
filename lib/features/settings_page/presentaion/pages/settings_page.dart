import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_tafseers/core/resource/colors.dart';
import 'package:great_tafseers/core/resource/strings.dart';
import 'package:great_tafseers/features/settings_page/presentaion/bloc/settings_page_bloc.dart';
import 'package:great_tafseers/features/settings_page/presentaion/widget/build_settings_button.dart';

class SettingsShowDialog extends StatelessWidget {
  final double width;
  final double height;
  SettingsShowDialog({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    List<String>titles=[CHOOSE_READER,SORA_DOWNLOAD,SORA_DOWNLOAD_AIA,CHOOSSE_TAFSIR,
      SETTINGS_TARAJIM, TimeStop,ACTIVATE_NOTIFICATIONS, HELP,ABUOT_US,PUBLISH
    ];
    List<bool>icons=[true,true,true,true,true,true, false,false,true,false];
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.015,bottom:height * 0.015),
      title: Center(child: Text(SETTINGS,style:TextStyle(fontSize: width*0.04,color: Color(HEX_BLACK_COLOR)),)),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Color(HEX_BLUE_GRAY_COLOR),
      buttonPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        // side: BorderSide(width: 0.05,color: Color(HEX_BLACK_COLOR)),
          borderRadius: BorderRadius.all(Radius.circular(2))),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height * 0.6,
          maxHeight: height * 0.6,
          maxWidth: width * 0.4,
          minWidth: width * 0.4,
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: height * 0.6,
                child: ListView.separated(
                  itemBuilder: (context, index) => BuildSettingsButton(
                    text:titles[index],
                    isIcon: icons[index],
                    screenWidth:width,
                    screenHeight:height,
                    function:(){},
                  ),
                  separatorBuilder:(context, index) => Container(height:0.085,width:width,color: Colors.grey),
                  itemCount: titles.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}