import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_body.dart';
// import 'package:mi_peluqueriapp/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar'),
        automaticallyImplyLeading: false,
      ),
      body: SignInBody(),
    );
  }
}
