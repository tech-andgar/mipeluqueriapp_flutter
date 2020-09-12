import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/complete_profile/components/complete_profile_form.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CompleteProfileBody extends StatefulWidget {
  CompleteProfileBody({Key key}) : super(key: key);

  @override
  _CompleteProfileBodyState createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();
  final FocusNode _nodeText4 = FocusNode();

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
        KeyboardActionsItem(focusNode: _nodeText4, toolbarButtons: toolbarButtonsListo),
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
                  // SvgPicture.asset(
                  //   'assets/images/logo_mipeluqueriapp.svg',
                  //   height: getProportionteScreenHeight(50),
                  // ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Text(
                    'Completar prefil',
                    style: kHeadingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionteScreenHeight(10)),
                  Text(
                    'Completar llenar sus datos o\ncontinuar con tu cuenta de red social',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  CompleteProfileForm(nodesText: [_nodeText1, _nodeText2, _nodeText3, _nodeText4]),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SocialCard(
                      //   icon: FontAwesomeIcons.facebookF,
                      //   press: () {},
                      // ),
                      // SocialCard(
                      //   icon: FontAwesomeIcons.google,
                      //   press: () {
                      //     signInWithGoogle().then(
                      //       (user) => {
                      //         this.user = user,
                      //         Navigator.pushNamed(context, LoginSuccessScreen.routeName),
                      //       },
                      //     );
                      //   },
                      // ),
                      // (Platform.isIOS)
                      //     ? SocialCard(
                      //         icon: FontAwesomeIcons.apple,
                      //         press: () {},
                      //       )
                      //     : SocialCard(
                      //         icon: FontAwesomeIcons.twitter,
                      //         press: () {},
                      //       ),
                    ],
                  ),
                  SizedBox(height: getProportionteScreenHeight(10)),
                  Text(
                    'Al continuar, confirmar que está de acuerdo \ncon nuestro términos y condiciones',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionteScreenHeight(20)),
                  // NoAccountText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
