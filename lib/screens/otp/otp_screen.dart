import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/otp/components/otp_body.dart';

class OtpScreen extends StatelessWidget {
  // const OtpScreen({Key key}) : super(key: key);
  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validación de código'),
      ),
      body: OtpBody(),
    );
  }
}
