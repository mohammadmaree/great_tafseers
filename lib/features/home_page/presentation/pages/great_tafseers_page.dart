import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_tafseers/core/resource/colors.dart';
import 'package:great_tafseers/core/resource/images.dart';
import 'package:great_tafseers/features/home_page/presentation/bloc/home_page_bloc.dart';
import 'package:great_tafseers/features/home_page/presentation/widget/widgets.dart';


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

   bool mark = false;
  changeMark(){
    setState(() {
      mark=!mark;
      print(mark);
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

    return BlocBuilder<HomePageBloc, HomePageState>(
     builder: (context, state) {
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
               Positioned(
                 top:screenHeight!*0.065,
                 child: BuildDefaultImage(
                   image:BORDER,
                   screenWidth:screenWidth!,
                   screenHeight:screenHeight!*0.935,
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: screenWidth!*0.08,),
                 child: PageView.builder(
                   scrollDirection: Axis.horizontal,
                   controller: controller,
                   itemBuilder:(context, index) =>
                       BuildPageView(
                         screenWidth:screenWidth!*0.84,
                         screenHeight:screenHeight!,
                         page:pages[index],
                       ),
                   itemCount: pages.length,
                   onPageChanged:(index){
                     BlocProvider.of<HomePageBloc>(context).add(ChangePageViewIndexEvent(index:index));
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
                   fontSize:screenWidth!*0.015+screenHeight!*0.005,
                   bold: true,
                 ),
               ),
               BuildAppBar(
                 screenWidth:screenWidth!,
                 screenHeight:screenHeight!,
               ),
               Positioned(
                   top:screenHeight!*0.013,
                   right:screenWidth!*0.15,
                   child: InkWell(
                     onTap: (){
                       changeMark();
                     },
                     child: Container(
                       color: Color(HEX_WHITE_COLOR).withOpacity(0.0),
                       width:screenWidth!*0.091,
                       height:screenWidth!*0.091,
                     ),
                   )
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
  },
);
  }
}

