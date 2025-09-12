import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// color
const white = Colors.white;
const green = Colors.green;
const red = Colors.red;
const black = Colors.black;
const transparent = Colors.transparent;

// Background
Widget backGround(BuildContext context) {
  return Image.asset(
    'assets/images/image-1.webp',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

// InputDecoration
InputDecoration inputDecoration(String labelTxt) {
  return InputDecoration(
    labelText: labelTxt,
    // filled: true,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: green, width: 1.2),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: green, width: 2.0),
    ),
  );
}

// Dropdown Field
BoxDecoration boxDecoration() {
  return BoxDecoration(
    color: transparent,
    border: Border.all(color: green, width: 1.2),
    borderRadius: BorderRadius.circular(4),
  );
}

// Dropdown Menu
Padding dropdownMenu(DropdownButton child) =>
    Padding(padding: EdgeInsets.only(left: 15, right: 24), child: child);

// Button style
ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: transparent,
    foregroundColor: white,
    padding: EdgeInsets.all(0),
    elevation: 5,
  );
}

Ink buttonChild(String btnTxt) {
  return Ink(
    decoration: BoxDecoration(
      color: green,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(btnTxt, style: TextStyle(fontWeight: FontWeight.bold)),
    ),
  );
}

// Error Toast
void errorToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: red,
    textColor: white,
    fontSize: 16.0,
  );
}

// Success Toast
void successToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: green,
    textColor: white,
    fontSize: 16.0,
  );
}

// Product Grid View
SliverGridDelegateWithFixedCrossAxisCount productGridViewStyle() {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 2,
    mainAxisExtent: 250,
  );
}
