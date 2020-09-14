import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.press,
    @required this.text,
  }) : super(key: key);

  final dynamic icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getProportionteScreenWidth(8),
          getProportionteScreenWidth(8),
          getProportionteScreenWidth(8),
          1,
        ),
        child: SizedBox(
          width: getProportionteScreenWidth(64),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _buildIconCheckType(icon),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
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
