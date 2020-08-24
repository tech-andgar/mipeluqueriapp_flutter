import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/forgot_password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recuperar contraseña"),
        ),
        body: ForgotPasswordBody(),
      ),
    );
  }
}
