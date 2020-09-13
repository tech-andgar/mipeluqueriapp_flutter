import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/otp/otp_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/custom_surffix_icon.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/form_error.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  final bool isDialog;
  final List<FocusNode> nodesText;
  CompleteProfileForm({
    Key key,
    this.isDialog = false,
    this.nodesText,
  }) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String _firstName;
  String _lastName;
  String _phoneNumber;
  String _address;
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
          buildFirstNameFormField(),
          SizedBox(height: getProportionteScreenHeight(15)),
          buildLastNameFormField(),
          SizedBox(height: getProportionteScreenHeight(15)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionteScreenHeight(15)),
          buildAddressFormField(),
          // SizedBox(height: getProportionteScreenHeight(5)),
          FormErrors(errors: errors),
          SizedBox(height: getProportionteScreenHeight(30)),
          DefaultButton(
            text: 'Continuar',
            press: () {
              if (_formKey.currentState.validate()) {
                // Go to OTP Screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      focusNode: widget.nodesText[0],
      keyboardType: TextInputType.name,
      onSaved: (newValue) => _firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameFirstNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameFirstNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa su nombre',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.user,
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      focusNode: widget.nodesText[1],
      keyboardType: TextInputType.name,
      onSaved: (newValue) => _lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameLastNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameLastNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Apellido',
        hintText: 'Ingresa su apellido',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.user,
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      focusNode: widget.nodesText[2],
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => _phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Celular',
        hintText: 'Ingresa su número celular',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.phone,
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      focusNode: widget.nodesText[3],
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => _address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Dirección',
        hintText: 'Ingresa su dirección',
        suffixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.home,
        ),
      ),
    );
  }
}
