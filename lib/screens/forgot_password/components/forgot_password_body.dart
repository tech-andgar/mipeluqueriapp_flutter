import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/custom_surffix_icon.dart';
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
            SizedBox(
              height: getProportionteScreenWidth(14),
            ),
            Text(
              'Recuperar contraseña',
              style: TextStyle(
                fontSize: getProportionteScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionteScreenWidth(14),
            ),
            Text(
              'Por favor escribe tu email y\nse te enviará un link de recuperación a tu cuenta',
              textAlign: TextAlign.center,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              // onSaved: (newValue) => _email = newValue,
              // onChanged: (value) {
              //   if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              //     setState(() {
              //       errors.remove(kEmailNullError);
              //     });
              //   } else if (EmailValidator.validate(value) && errors.contains(kInvalidEmailError)) {
              //     setState(() {
              //       errors.remove(kInvalidEmailError);
              //     });
              //   }
              //   return null;
              // },
              // validator: (value) {
              //   if (value.isEmpty && !errors.contains(kEmailNullError)) {
              //     setState(() {
              //       errors.add(kEmailNullError);
              //     });
              //   } else if (!EmailValidator.validate(value) && !errors.contains(kInvalidEmailError)) {
              //     setState(() {
              //       errors.add(kInvalidEmailError);
              //     });
              //   }
              //   return null;
              // },
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
            ),
            DefaultButton(
              text: 'Enviar',
            ),
          ],
        ),
      ),
    );
  }
}
