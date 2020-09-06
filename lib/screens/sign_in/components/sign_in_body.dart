import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/screens/login_success/login_success_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_form.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_no_account_text.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_social_card.dart';
import 'package:mi_peluqueriapp/screens/sign_in/services/auth.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SignInBody extends StatefulWidget {
  // const SignInBody({Key key}) : super(key: key);

  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  User user;

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
                SvgPicture.asset(
                  'assets/images/logo_mipeluqueriapp.svg',
                  height: getProportionteScreenHeight(50),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'Bienvienido\nMi PeluqueriApp',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionteScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionteScreenHeight(10)),
                Text(
                  'Logueate con tu Email o\nIngresa con tu cuenta de red social',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: FontAwesomeIcons.facebookF,
                      press: () {},
                    ),
                    SocialCard(
                      icon: FontAwesomeIcons.google,
                      press: () {
                        signInWithGoogle().then(
                            (user) => {this.user = user, Navigator.pushNamed(context, LoginSuccessScreen.routeName)});
                      },
                    ),
                    SocialCard(
                      icon: FontAwesomeIcons.twitter,
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionteScreenHeight(10)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
