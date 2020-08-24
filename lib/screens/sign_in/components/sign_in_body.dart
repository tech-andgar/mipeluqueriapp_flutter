import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/custom_surffix_icon.dart';
import 'package:mi_peluqueriapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/logo_mipeluqueriapp.svg',
                height: getProportionteScreenWidth(180),
              ),
              Spacer(),
              Text(
                'Bienvienido mi_peluqueriapp',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionteScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Logueo con su email y contraseña o\n ingresa con su cuenta de red social',
                textAlign: TextAlign.center,
              ),
              Spacer(),
              SignForm(),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  // SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionteScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionteScreenHeight(20),
          ),
          DefaultButton(
            text: 'Contiunar',
            press: () {},
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Ingresa su contraseña',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.lock,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Ingresa su email',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.envelope,
        ),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        // contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(28),
        //   borderSide: BorderSide(color: kTextColor),
        //   gapPadding: 10,
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(28),
        //   borderSide: BorderSide(color: kTextColor),
        //   gapPadding: 10,
        // ),
      ),
    );
  }
}
