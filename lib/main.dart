import 'package:MIPELUQUERIAPP/routes.dart';
import 'package:MIPELUQUERIAPP/screens/splash/splash_screen.dart';
import 'package:MIPELUQUERIAPP/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeLight(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
