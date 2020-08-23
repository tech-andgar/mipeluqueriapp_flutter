import 'package:MIPELUQUERIAPP/screens/sign_in/components/sign_in_body.dart';
// import 'package:MIPELUQUERIAPP/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar'),
      ),
      body: SignInBody(),
    );
  }
}
