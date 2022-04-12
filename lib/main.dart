import 'package:flutter/material.dart';
import 'package:great_tafseers/pages/great_tafseers_page.dart';
import 'package:great_tafseers/pages/start_up_page.dart';
import 'package:great_tafseers/resource/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        GreatTafseersPage.routeName : (ctx) => GreatTafseersPage(),
      },
      home: GreatTafseersPage(),
    );
  }
}
