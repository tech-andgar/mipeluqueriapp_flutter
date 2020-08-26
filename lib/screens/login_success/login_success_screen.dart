import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/login_success/components/login_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: Text("Login exitoso"),
        ),
        body: LoginSuccessBody(),
      ),
    );
  }
}
