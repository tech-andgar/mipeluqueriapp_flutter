import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/complete_profile/complete_profile_screen.dart';
import 'package:mi_peluqueriapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:mi_peluqueriapp/screens/login_success/login_success_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/custom_surffix_icon.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/form_error.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SignUpForm extends StatefulWidget {
  final bool isDialog;
  final List<FocusNode> nodesText;

  SignUpForm({Key key, this.isDialog = false, this.nodesText}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  String _confirmPassword;
  bool _rememberPassword = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(focusNode: widget.nodesText[0]),
          SizedBox(height: getProportionteScreenHeight(20)),
          buildPasswordFormField(focusNode: widget.nodesText[1]),
          SizedBox(height: getProportionteScreenHeight(20)),
          buildConfirmPasswordFormField(focusNode: widget.nodesText[2]),
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
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
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

  TextFormField buildPasswordFormField({FocusNode focusNode}) {
    return TextFormField(
      obscureText: true,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => _password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kSortPassError);
        }
        _password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kSortPassError);
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

  TextFormField buildConfirmPasswordFormField({FocusNode focusNode}) {
    return TextFormField(
      obscureText: true,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => _confirmPassword = newValue,
      onChanged: (value) {
        if (_password == _confirmPassword) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return '';
        } else if (_password != value) {
          addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirmar Contraseña',
        hintText: 'Nuevo ingresa su contraseña',
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.lock,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField({FocusNode focusNode}) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (EmailValidator.validate(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!EmailValidator.validate(value)) {
          addError(error: kInvalidEmailError);
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
