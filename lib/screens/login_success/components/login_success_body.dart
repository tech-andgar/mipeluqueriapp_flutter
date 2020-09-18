import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/home/home_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';
import 'package:mi_peluqueriapp/services/auth.dart';
// import 'package:mi_peluqueriapp/screens/sign_in/services/auth.dart';
// import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class LoginSuccessBody extends StatelessWidget {
  // const LoginSuccessBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Icon(
            FontAwesomeIcons.check,
            color: kPrimaryColor,
            size: SizeConfig.screenHeight * 0.4, //%40
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Logueo Exitoso!",
            style: TextStyle(
              fontSize: getProportionteScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            height: getProportionteScreenWidth(50),
            child: DefaultButton(
              text: "Ir al Inicio",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
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
