import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const red = Color.fromRGBO(231, 28, 36, 1);
const dark = Color.fromRGBO(136, 28, 32, 1);
const green = Color.fromRGBO(33, 191, 115, 1);
const blue = Color.fromRGBO(52, 152, 219, 1.0);
const orange = Color.fromRGBO(230, 126, 34, 1.0);
const white = Color.fromRGBO(255, 255, 255, 1.0);
const darkBlue = Color.fromRGBO(44, 62, 80, 1.0);
const lightGray = Color.fromRGBO(135, 142, 150, 1.0);
const light = Color.fromRGBO(211, 211, 211, 1.0);

TextStyle headLine(dynamic textColor) {
  return TextStyle(color: textColor, fontSize: 28, fontWeight: FontWeight.w700);
}

TextStyle subLine(dynamic textColor) {
  return TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w400);
}

InputDecoration inputDecoration(dynamic labelTxt) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: green, width: 1),
    ),
    fillColor: white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: labelTxt,
  );
}

SvgPicture screenBackground(BuildContext context) {
  return SvgPicture.asset(
    'assets/images/background-image.png',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}
