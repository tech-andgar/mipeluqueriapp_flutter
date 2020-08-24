import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/size_config.dart';
import 'package:flutter/material.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          kTextTitleApp,
          style: TextStyle(
            fontSize: getProportionteScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionteScreenHeight(265),
          width: getProportionteScreenWidth(235),
        )
      ],
    );
  }
}
