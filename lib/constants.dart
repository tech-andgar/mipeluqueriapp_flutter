import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

const kTextTitleApp = 'Mi PeluqueriApp';
// 1° OPTION
// const kPrimaryColor = Color(0xFF2F5E66);
// const kSecondaryColor = Color(0xFFD29B88);

// 2° OPTION
const kPrimaryColor = Color(0xFFBF6B04);
const kSecondaryColor = Color(0xFF024873);
// const kPrimaryColor = Color(0xFFA64F03);
// const kPrimaryColor = Color(0xFFD9B29C);
// const kPrimaryColor = Color(0xFF260101);

// 3° OPTION
// const kSecondaryColor = Color(0xFF024873);
// const kSecondaryColor = Color(0xFF03658C);
// const kPrimaryColor = Color(0xFF03A66A);
// const kPrimaryColor = Color(0xFFBF8B78);
// const kSecondaryColor = Color(0xFFA6453C);

const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor =
    LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFA53E), Color(0xFFFF7643)]);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final kHeadingStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionteScreenWidth(28),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

// Form Error
// final RegExp emailValidatorRegExp
const String kEmailNullError = 'Por favor escriba su email';
const String kInvalidEmailError = 'Por favor escriba correctamente su email';
const String kPassNullError = 'Por favor escriba su contraseña';
const String kSortPassError = 'Su contraseña es muy debil';
const String kMatchPassError = 'Su contraseña no concuerda ingresa';
const String kNameFirstNullError = 'Por favor escriba su nombre';
const String kNameLastNullError = 'Por favor escriba su apellido';
const String kPhoneNumberNullError = 'Por favor escriba su número teléfono';
const String kAddressNullError = 'Por favor escriba su dirección';
