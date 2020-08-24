import 'package:mi_peluqueriapp/screens/splash/components/splash_body.dart';
import 'package:mi_peluqueriapp/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
