import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
    this.enabledClickedMore = true,
  }) : super(key: key);

  final bool enabledClickedMore;
  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(20)),
      child: Row(
        mainAxisAlignment: (enabledClickedMore) ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: (enabledClickedMore) ? getProportionteScreenWidth(18):getProportionteScreenWidth(22),
              fontWeight: (enabledClickedMore) ? FontWeight.normal : FontWeight.bold,
              color: Colors.black,
            ),
          ),
          if (enabledClickedMore)
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
