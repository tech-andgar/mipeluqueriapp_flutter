
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.icon,
    this.numOfItems = 0,
    @required this.press,
  }) : super(key: key);

  final dynamic icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionteScreenWidth(8)),
            height: getProportionteScreenWidth(46),
            width: getProportionteScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: _buildIconCheckType(icon),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -8,
              right: -8,
              child: Container(
                height: getProportionteScreenWidth(24),
                width: getProportionteScreenWidth(24),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                      fontSize: getProportionteScreenWidth(12),
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
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
