import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/size_config.dart';
import 'package:mi_peluqueriapp/constants.dart';


class OtpForm extends StatefulWidget {
  OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionteScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionteScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin3FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionteScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin4FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionteScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      pin4FocusNode.unfocus();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.15),
            DefaultButton(
              text: 'Contiunar',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
