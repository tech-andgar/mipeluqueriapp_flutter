
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes cuenta registrada?     ",
          style: TextStyle(fontSize: getProportionteScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
          child: Text(
            "Registrar",
            style: TextStyle(fontSize: getProportionteScreenWidth(16), color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
