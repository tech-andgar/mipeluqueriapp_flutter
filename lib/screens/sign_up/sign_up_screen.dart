import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/sign_up/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: SignUpBody(),
    );
  }
}
