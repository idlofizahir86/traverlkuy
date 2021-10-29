import 'package:flutter/material.dart';
import 'package:travelkuy/ui/pages/bonus_page.dart';
import 'package:travelkuy/ui/pages/detail_page.dart';
import 'package:travelkuy/ui/pages/get_started.dart';
import 'package:travelkuy/ui/pages/main_page.dart';
import 'package:travelkuy/ui/pages/sign_up_page.dart';
import 'package:travelkuy/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus' : (context) => BonusPage(),
        '/main': (context) => MainPage(),
        '/detail-page': (context) => DetailPage(),
      },
    );
  }
}
