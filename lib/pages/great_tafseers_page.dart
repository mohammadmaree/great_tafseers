import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_tafseers/resource/images.dart';
import 'package:great_tafseers/widget/build_default_image.dart';
import 'package:great_tafseers/widget/build_default_image_icon.dart';
import 'package:great_tafseers/widget/build_default_text.dart';
import 'package:great_tafseers/widget/build_page_view.dart';

class GreatTafseersPage extends StatefulWidget {
  static String routeName = 'GreatTafseersPageRouteName';
  @override
  State<GreatTafseersPage> createState() => _GreatTafseersPageState();
}

class _GreatTafseersPageState extends State<GreatTafseersPage> {
  double? screenWidth;
  double? screenHeight;

  final controller = PageController(
    initialPage: 0,
  );

  List<String>pages=[PAGE321,PAGE325,PAGE367,PAGE452];
  List<String>soraNames=[SORA20,SORA21,SORA26,SORA37];
  List<String>jozaNumbers=[JOZA016,JOZA017,JOZA019,JOZA023];
  List<String>pageNumbers=['321','325','367','452'];

  bool mark=false;
  void changeMark(){
    setState(() {
      mark=!mark;
      print('changeMark');
    });
  }


  String soraName= SORA20;
  String jozaNumber=JOZA016;
  String pageNumber='321';
  void changePage(index){
    setState(() {
      soraName= soraNames[index];
      jozaNumber=jozaNumbers[index];
      pageNumber=pageNumbers[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BuildDefaultImage(
              image:APP_BORDER_MAIN_PAGE,
              screenWidth:screenWidth!,
              screenHeight:screenHeight!*0.1,
            ),
            Positioned(
              top:screenHeight!*0.075,
              child: BuildDefaultImage(
                image:BACKGROUND_MAIN_PAGE,
                screenWidth:screenWidth!,
                screenHeight:screenHeight!*0.925,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_PLAY_END,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_PLAY_ALL,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_AYALIST,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_SETTINGS,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_LIST,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image:  ICON_BOOK_MARK_LIST,
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image:ICON_ADD_BOOK_MARK,
                      function: (){
                        changeMark();
                      },
                    ),
                    BuildDefaultImageIcon(
                      screenWidth:screenWidth!*0.091,
                      screenHeight:screenHeight!*0.091,
                      image: ICON_SEARCH,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top:screenHeight!*0.065,
              child: BuildDefaultImage(
                image:BORDER,
                screenWidth:screenWidth!,
                screenHeight:screenHeight!*0.935,
              ),
            ),
            Container(
              width:screenWidth,
              height:screenHeight!,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                  controller: controller,
                  itemBuilder:(context, index) =>
                      BuildPageView(
                        screenWidth:screenWidth!,
                        screenHeight:screenHeight!,
                        page:pages[index],
                      ),
                itemCount: pages.length,
                onPageChanged:(index){
                  changePage(index);
                },
              ),
            ),
            Positioned(
              top:screenHeight!*0.08,
              right:screenWidth!*0.19,
              child: BuildDefaultImage(
                image:jozaNumber,
                screenWidth:screenWidth!*0.14,
                screenHeight:screenHeight!*0.034,
              ),
            ),
            Positioned(
              top:screenHeight!*0.08,
              left:screenWidth!*0.19,
              child: BuildDefaultImage(
                image:soraName,
                screenWidth:screenWidth!*0.14,
                screenHeight:screenHeight!*0.034,
              ),
            ),
            Positioned(
              bottom:screenHeight!*0.0275,
              left:screenWidth!*0.481,
              child: BuildDefaultText(
                color:0xFF000000,
                text: pageNumber,
                fontSize:7,
                bold: true,
              ),
            ),
            if(mark)
            Positioned(
              top:screenHeight!*0.08,
              left:screenWidth!*0.01,
              child: BuildDefaultImage(
                image:BOOK_MARK,
                screenWidth:screenWidth!*0.065,
                screenHeight:screenHeight!*0.065,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
