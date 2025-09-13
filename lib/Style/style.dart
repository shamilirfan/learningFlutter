import 'package:flutter/material.dart';

const red = Colors.red;
const dark = Color.fromRGBO(136, 28, 32, 1);
const green = Colors.green;
const blue = Color.fromRGBO(52, 152, 219, 1.0);
const orange = Color.fromRGBO(230, 126, 34, 1.0);
const white = Colors.white;
const darkBlue = Color.fromRGBO(44, 62, 80, 1.0);
const lightGray = Color.fromRGBO(135, 142, 150, 1.0);
const light = Color.fromRGBO(211, 211, 211, 1.0);
const transparent = Colors.transparent;

Widget splashScreen(BuildContext context) {
  return Image.asset(
    'assets/images/splash-image.png',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

Widget loginScreen(BuildContext context) {
  return Image.asset(
    'assets/images/background-image.png',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

TextStyle headLineText() {
  return TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: darkBlue);
}

TextStyle subLineText() {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: lightGray);
}

InputDecoration inputDecoration(String labelTxt) {
  return InputDecoration(
    labelText: labelTxt,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: green, width: 1.5),
    ),
    border: OutlineInputBorder(),
  );
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 2,
    foregroundColor: white,
    backgroundColor: transparent,
    padding: EdgeInsets.all(0),
  );
}

Ink buttonChild(dynamic btnTxt) {
  return Ink(
    decoration: BoxDecoration(
      color: green,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Container(
      width: double.infinity,
      height: 45,
      alignment: Alignment.center,
      child: Icon(btnTxt, color: white, fontWeight: FontWeight.bold),
    ),
  );
}
