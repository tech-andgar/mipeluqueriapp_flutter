
import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);
  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionteScreenWidth(18),
              color: Colors.black,
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Mirar más",
                style: TextStyle(),
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
