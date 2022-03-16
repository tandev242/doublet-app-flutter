import 'package:doublet_app/screens/product_detail.dart';
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
          '/': (BuildContext context) => const HomeScreen(),
          '/intro': (BuildContext context) => const IntroScreen(),
          '/login': (BuildContext context) => const LoginScreen(),
          '/register': (BuildContext context) => const RegisterScreen(),
          '/detail': (BuildContext context) => const ProductDetailScreen(),
        },
        initialRoute: '/intro');
  }
}
