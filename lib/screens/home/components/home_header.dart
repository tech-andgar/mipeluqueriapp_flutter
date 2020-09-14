
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_icon_btn_with_counter.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_search_field.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: FontAwesomeIcons.shoppingCart,
            press: () {},
          ),
          IconBtnWithCounter(
            icon: FontAwesomeIcons.bell,
            press: () {},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
