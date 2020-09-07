import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:mi_peluqueriapp/screens/login_success/login_success_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_form.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_no_account_text.dart';
import 'package:mi_peluqueriapp/screens/sign_in/components/sign_in_social_card.dart';
import 'package:mi_peluqueriapp/screens/sign_in/services/auth.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SignInBody extends StatefulWidget {
  // const SignInBody({Key key}) : super(key: key);

  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  User user;
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();

  /// Creates the [KeyboardActionsConfig] to hook up the fields
  /// and their focus nodes to our [FormKeyboardActions].
  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText1,
          displayDoneButton: false,
        ),
        KeyboardActionsItem(
          focusNode: _nodeText2,
          toolbarButtons: [
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
          ],
        ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText3,
        //   onTapAction: () async {
        //     await showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             content: Text("Custom Action"),
        //             actions: <Widget>[
        //               FlatButton(
        //                 child: Text("OK"),
        //                 onPressed: () => Navigator.of(context).pop(),
        //               )
        //             ],
        //           );
        //         });
        //   },
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText4,
        //   displayDoneButton: false,
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText5,
        //   toolbarButtons: [
        //     //button 1
        //     (node) {
        //       return GestureDetector(
        //         onTap: () => node.unfocus(),
        //         child: Container(
        //           color: Colors.white,
        //           padding: EdgeInsets.all(8.0),
        //           child: Text(
        //             "CLOSE",
        //             style: TextStyle(color: Colors.black),
        //           ),
        //         ),
        //       );
        //     },
        //     //button 2
        //     (node) {
        //       return GestureDetector(
        //         onTap: () => node.unfocus(),
        //         child: Container(
        //           color: Colors.black,
        //           padding: EdgeInsets.all(8.0),
        //           child: Text(
        //             "DONE",
        //             style: TextStyle(color: Colors.white),
        //           ),
        //         ),
        //       );
        //     }
        //   ],
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText6,
        //   footerBuilder: (_) => PreferredSize(
        //       child: SizedBox(
        //           height: 40,
        //           child: Center(
        //             child: Text('Custom Footer'),
        //           )),
        //       preferredSize: Size.fromHeight(40)),
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText7,
        //   displayActionBar: false,
        //   footerBuilder: (_) => PreferredSize(
        //       child: SizedBox(
        //           height: 40,
        //           child: Center(
        //             child: Text('Custom Footer'),
        //           )),
        //       preferredSize: Size.fromHeight(40)),
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText8,
        //   footerBuilder: (_) => CounterKeyboard(
        //     notifier: custom1Notifier,
        //   ),
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText9,
        //   footerBuilder: (_) => ColorPickerKeyboard(
        //     notifier: custom2Notifier,
        //   ),
        // ),
        // KeyboardActionsItem(
        //   focusNode: _nodeText10,
        //   displayActionBar: false,
        //   footerBuilder: (_) => NumericKeyboard(
        //     focusNode: _nodeText10,
        //     notifier: custom3Notifier,
        //   ),
        // ),
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
                  SvgPicture.asset(
                    'assets/images/logo_mipeluqueriapp.svg',
                    height: getProportionteScreenHeight(50),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Text(
                    'Bienvienido\nMi PeluqueriApp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionteScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionteScreenHeight(10)),
                  Text(
                    'Logueate con tu Email o\nIngresa con tu cuenta de red social',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  SignForm(nodesText: [_nodeText1, _nodeText2]),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SocialCard(
                      //   icon: FontAwesomeIcons.facebookF,
                      //   press: () {},
                      // ),
                      SocialCard(
                        icon: FontAwesomeIcons.google,
                        press: () {
                          signInWithGoogle().then(
                              (user) => {this.user = user, Navigator.pushNamed(context, LoginSuccessScreen.routeName)});
                        },
                      ),
                      // SocialCard(
                      //   icon: FontAwesomeIcons.twitter,
                      //   press: () {},
                      // ),
                      SocialCard(
                        icon: FontAwesomeIcons.apple,
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionteScreenHeight(10)),
                  NoAccountText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
