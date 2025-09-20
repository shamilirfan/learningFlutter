import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

// Getx SnackBar
void getxSnackbar() {
  Get.snackbar(
    'Title',
    'Message',
    snackPosition: SnackPosition.BOTTOM,
    showProgressIndicator: true,
    backgroundColor: green,
    colorText: white,
    borderRadius: 2,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    icon: Icon(Icons.addchart_outlined, color: white),
    isDismissible: true,
    duration: Duration(seconds: 5),
    animationDuration: Duration(milliseconds: 900),
  );
}

// Getx Dialog
void getxDialog(String txtConfirm, String txtCancel) {
  Get.defaultDialog(
    title: 'Delete',
    titlePadding: EdgeInsets.all(15),
    titleStyle: TextStyle(color: white),
    middleText: 'Do you want to delete.?',
    middleTextStyle: TextStyle(color: white),
    backgroundColor: blue,
    radius: 4,
    textCancel: txtCancel,
    cancelTextColor: white,
    textConfirm: txtConfirm,
    confirmTextColor: blue,
    buttonColor: white,
    onCancel: () => {Get.back(closeOverlays: true)},
    onConfirm: () => {Get.back(closeOverlays: true)},
    barrierDismissible: false,
    content: Column(
      children: [
        Text('data - 1'),
        Text('data - 2'),
        Text('data - 3'),
        Text('data - 4'),
      ],
    ),
  );
}
