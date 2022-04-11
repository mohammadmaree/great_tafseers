import 'package:flutter/material.dart';
import 'package:great_tafseers/pages/great_tafseers_page.dart';
import 'package:great_tafseers/resource/images.dart';
import 'package:great_tafseers/widget/build_default_image.dart';

class StartUpPage extends StatefulWidget {
  @override
  State<StartUpPage> createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  double? screenWidth;
  double? screenHeight;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) async{
      Navigator.of(context).pushReplacementNamed(GreatTafseersPage.routeName);
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: BuildDefaultImage(
        image:START_UP,
        screenWidth:screenWidth!,
        screenHeight:screenHeight!,
      ),
    );
  }
}
