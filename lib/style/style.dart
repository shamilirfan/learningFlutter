import 'package:app1/Screeen/ProductGridView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 88, 1);

InputDecoration inputDecoration(dynamic labelTxt) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 0),
    ),
    filled: true,
    fillColor: colorWhite,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    labelText: labelTxt,
    hoverColor: colorWhite,
  );
}

SvgPicture screenBackGround(BuildContext context) {
  return SvgPicture.asset(
    'assets/images/image-2.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

DecoratedBox decoratedBox(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: colorWhite,
      border: Border.all(color: colorWhite, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(padding: EdgeInsets.only(left: 30, right: 30), child: child),
  );
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: colorWhite,
    elevation: 4,
    padding: EdgeInsets.all(0),
  );
}

Ink successButtonChild(String buttonTxt) {
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(buttonTxt, style: TextStyle(fontWeight: FontWeight.bold)),
    ),
  );
}

// Toast
void errorToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorRed,
    textColor: colorWhite,
    fontSize: 16.0,
  );
}

void successToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorGreen,
    textColor: colorWhite,
    fontSize: 16.0,
  );
}

SliverGridDelegateWithFixedCrossAxisCount ProductGridViewStyle() {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 2,
    mainAxisExtent: 250,
  );
}
