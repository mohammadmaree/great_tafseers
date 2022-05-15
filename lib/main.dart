import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_tafseers/dependency_injection/dependency_injection_home_page.dart';
import 'package:great_tafseers/features/home_page/presentation/bloc/home_page_bloc.dart';
import 'package:great_tafseers/features/home_page/presentation/pages/great_tafseers_page.dart';
import 'dependency_injection/dependency_injection_home_page.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageBloc>(
            create: (_)=> HomePageBloc(changePageViewIndex: dI()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          GreatTafseersPage.routeName : (ctx) => GreatTafseersPage(),
        },
        home: GreatTafseersPage(),
      ),
    );
  }
}
