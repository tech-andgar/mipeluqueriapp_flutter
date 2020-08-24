import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mi_peluqueriapp/size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionteScreenWidth(20),
        getProportionteScreenWidth(20),
        getProportionteScreenWidth(20),
      ),
      child: _buildIconCheckType(icon),
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
