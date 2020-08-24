import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';
import 'package:mi_peluqueriapp/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: kPrimaryColor,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionteScreenWidth(18),
          color: Colors.white,
        ),
      ),
    );
  }
}
