import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_form.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_no_account_text.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_social_card.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SignInBody extends StatelessWidget {
  // const SignInBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionteScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SvgPicture.asset(
                //   'assets/images/logo_mipeluqueriapp.svg',
                //   height: getProportionteScreenHeight(150),
                // ),
                // SizedBox(
                //   height: getProportionteScreenHeight(20),
                // ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Bienvienido\nMi PeluqueriApp',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionteScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionteScreenHeight(20)),
                Text(
                  'Logueo con su email y contraseña o\n ingresa con su cuenta de red social',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: FontAwesomeIcons.facebookF,
                      press: () {},
                    ),
                    SocialCard(
                      icon: FontAwesomeIcons.google,
                      press: () {},
                    ),
                    SocialCard(
                      icon: FontAwesomeIcons.twitter,
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionteScreenHeight(20)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
