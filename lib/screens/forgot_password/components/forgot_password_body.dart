import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Recuperar contraseña',
              style: TextStyle(
                fontSize: getProportionteScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Por favor escriba su email y \nenviará un link de recuperacion de su cuenta',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
