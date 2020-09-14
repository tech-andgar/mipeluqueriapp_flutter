import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
    @required this.press,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  final GestureTapCallback press;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionteScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionteScreenWidth(20),
        vertical: getProportionteScreenWidth(15),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "$title\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "$subtitle",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
