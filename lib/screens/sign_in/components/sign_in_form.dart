import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:mi_peluqueriapp/screens/login_success/login_success_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/custom_surffix_icon.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/form_error.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SignForm extends StatefulWidget {
  // SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String _email;
  String _password;
  bool _rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionteScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionteScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: _rememberPassword,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    _rememberPassword = value;
                  });
                },
              ),
              Text("Recordar contraseña"),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  "Recuperar contraseña",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionteScreenHeight(20)),
          FormErrors(errors: errors),
          SizedBox(height: getProportionteScreenHeight(20)),
          SizedBox(
            width: double.infinity,
            height: getProportionteScreenWidth(56),
            child: DefaultButton(
              text: 'Continuar',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();

                  // TODO if all are vali then go to success screen
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  // Scaffold.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('Processing Data'),
                  //   ),
                  // );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => _password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kSortPassError)) {
          setState(() {
            errors.remove(kSortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 && !errors.contains(kSortPassError)) {
          setState(() {
            errors.add(kSortPassError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Ingresa su contraseña',
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.lock,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (EmailValidator.validate(value) && errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';

        } else if (!EmailValidator.validate(value) && !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
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
    );
  }
}
