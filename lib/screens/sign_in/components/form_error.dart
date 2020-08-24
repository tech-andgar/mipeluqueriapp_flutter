
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.exclamationCircle,
          size: getProportionteScreenHeight(14),
          color: Colors.red,
        ),
        SizedBox(
          width: getProportionteScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
