import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/otp/components/otp_form.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class OtpBody extends StatefulWidget {
  OtpBody({Key key}) : super(key: key);

  @override
  _OtpBodyState createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();

  /// Creates the [KeyboardActionsConfig] to hook up the fields
  /// and their focus nodes to our [FormKeyboardActions].
  KeyboardActionsConfig _buildConfig(BuildContext context) {
    var toolbarButtonsListo = [
      (node) {
        return GestureDetector(
          onTap: () => node.unfocus(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "LISTO",
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    ];

    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(focusNode: _nodeText1, toolbarButtons: toolbarButtonsListo),
        KeyboardActionsItem(focusNode: _nodeText2, toolbarButtons: toolbarButtonsListo),
        KeyboardActionsItem(focusNode: _nodeText3, toolbarButtons: toolbarButtonsListo),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      config: _buildConfig(context),
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionteScreenWidth(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Text(
                    'Validación del código',
                    style: kHeadingStyle,
                  ),
                  Text('Enviamos un código a +57 300 599 **** '),
                  buildTimer(),
                  SizedBox(height: SizeConfig.screenHeight * 0.15),
                  OtpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.075),
                  InkWell(
                    onTap: () {
                      // resend your OTP
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Nuevo enviar el código de validación',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Este código caducará en '),
        TweenAnimationBuilder(
          duration: const Duration(seconds: 60),
          tween: Tween(begin: 60.0, end: 0),
          builder: (BuildContext context, dynamic value, Widget child) {
            return Text(
              "00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor),
            );
          },
          onEnd: () {},
        ),
      ],
    );
  }
}
