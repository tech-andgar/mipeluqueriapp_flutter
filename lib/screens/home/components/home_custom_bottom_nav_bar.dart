
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(20), vertical: getProportionteScreenHeight(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarItem(
                icon: FontAwesomeIcons.home,
                title: 'Inicio',
                isActive: true,
                press: () {},
              ),
              BottomNavBarItem(
                icon: FontAwesomeIcons.facebookMessenger,
                title: 'Chat',
                press: () {},
              ),
              BottomNavBarItem(
                icon: FontAwesomeIcons.tools,
                title: 'Ajustes',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key key,
    @required this.icon,
    @required this.title,
    this.isActive = false,
    @required this.press,
  }) : super(key: key);
  final String title;
  final dynamic icon;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionteScreenWidth(60),
        width: getProportionteScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefaultShadow],
        ),
        child: Column(
          children: [
            _buildIconCheckType(icon: icon, size: 28),
            Spacer(),
            Text(title, style: TextStyle(fontSize: getProportionteScreenWidth(13)),),
          ],
        ),
      ),
    );
  }

  Widget _buildIconCheckType({
    dynamic icon,
    Color color = Colors.black54,
    double size = 16,
    double width = 236,
    double height = 265,
  }) {
    if (icon is String) {
      return (icon.contains('svg'))
          ? SvgPicture.asset(
              icon,
              height: getProportionteScreenHeight(height),
              width: getProportionteScreenWidth(width),
            )
          : Image.asset(
              icon,
              height: getProportionteScreenHeight(height),
              width: getProportionteScreenWidth(width),
            );
    } else if (icon is IconData) {
      return Icon(
        icon,
        size: getProportionteScreenWidth(size),
        color: color,
      );
    } else {
      throw ErrorWidget('unknow type icon');
    }
  }
}
