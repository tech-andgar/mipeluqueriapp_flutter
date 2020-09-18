import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mi_peluqueriapp/screens/home/home_screen.dart';
import 'package:mi_peluqueriapp/size_config.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mi_peluqueriapp/components/button/default_button.dart';
// import 'package:mi_peluqueriapp/constants.dart';
// import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';
// import 'package:mi_peluqueriapp/services/auth.dart';
// import 'package:mi_peluqueriapp/screens/sign_in/services/auth.dart';
// import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';

class LoginSuccessBody extends StatefulWidget {
  // const LoginSuccessBody({Key key}) : super(key: key);}

  @override
  _LoginSuccessBodyState createState() => _LoginSuccessBodyState();
}

class _LoginSuccessBodyState extends State<LoginSuccessBody> {
  Timer _timer;
  _LoginSuccessBodyState() {
    _timer = Timer(const Duration(milliseconds: 3500), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
// var timer = Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, HomeScreen.routeName));
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Lottie.asset('assets/images/successAuth.json'),
          // Icon(
          //   FontAwesomeIcons.check,
          //   color: kPrimaryColor,
          //   size: SizeConfig.screenHeight * 0.4, //%40
          // ),
          // SizedBox(height: SizeConfig.screenHeight * 0.08),
          // Text(
          //   "Logueo Exitoso!",
          //   style: TextStyle(
          //     fontSize: getProportionteScreenWidth(30),
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black,
          //   ),
          // ),
          // Spacer(),
          // SizedBox(
          //   width: SizeConfig.screenWidth * 0.6,
          //   height: getProportionteScreenWidth(50),
          //   child: DefaultButton(
          //     text: "Ir al Inicio",
          //     press: () {
          //       Navigator.pushNamed(context, HomeScreen.routeName);
          //     },
          //   ),
          // ),
          // DefaultButton(
          //   text: "Sign out",
          //   press: () {
          //     signOutGoogle();
          //     Navigator.pushNamed(context, SignInScreen.routeName);
          //   },
          // ),
          Spacer(),
        ],
      ),
    );
  }
}
