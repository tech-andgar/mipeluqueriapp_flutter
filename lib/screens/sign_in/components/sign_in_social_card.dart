import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);
  final dynamic icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(getProportionteScreenWidth(3)),
        height: getProportionteScreenHeight(40),
        width: getProportionteScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: _buildIconCheckType(icon),
      ),
    );
  }

  Widget _buildIconCheckType(dynamic icon) {
    if (icon is String) {
      return (icon.contains('svg'))
          ? SvgPicture.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
            )
          : Image.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
            );
    } else if (icon is IconData) {
      return Icon(
        icon,
        size: getProportionteScreenWidth(24),
      );
    } else {
      throw ErrorWidget('unknow type icon');
    }
  }
}
