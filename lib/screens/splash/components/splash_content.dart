import 'package:MIPELUQUERIAPP/constants.dart';
import 'package:MIPELUQUERIAPP/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
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
          "Mi PeluqueriApp",
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
        (image.contains('svg'))
            ? SvgPicture.asset(
                image,
                height: getProportionteScreenHeight(265),
                width: getProportionteScreenWidth(235),
              )
            : Image.asset(
                image,
                height: getProportionteScreenHeight(265),
                width: getProportionteScreenWidth(235),
              )
      ],
    );
  }
}
