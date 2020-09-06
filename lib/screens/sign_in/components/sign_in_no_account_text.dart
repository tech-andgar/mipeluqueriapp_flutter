import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            "¿No tienes cuenta registrada?",
            style: TextStyle(fontSize: getProportionteScreenWidth(16)),
          ),
          Spacer(),
          InkWell(
            onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName), // TODO SCREEN SIGN UP
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Registrar",
                style: TextStyle(fontSize: getProportionteScreenWidth(16), color: kPrimaryColor),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
