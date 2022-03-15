import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doublet_app/screens/home.dart';
import 'package:doublet_app/screens/login.dart';
import 'package:doublet_app/screens/register.dart';
import 'package:doublet_app/screens/intro.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: Colors.blue[800],
    ));

    return MaterialApp(
        title: 'DOUBLE T',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: <String, WidgetBuilder>{
          'HOME_SCREEN': (BuildContext context) => const HomeScreen(),
          'INTRO_SCREEN': (BuildContext context) => const IntroScreen(),
        },
        initialRoute: 'HOME_SCREEN');
  }
}
