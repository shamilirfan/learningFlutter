import 'package:flutter/material.dart';

InputDecoration inputDecoration(labelTxt) {
  return InputDecoration(
    labelText: labelTxt,
    border: OutlineInputBorder(),
    filled: true,
    fillColor: Colors.white,
    hoverColor: Colors.white,
  );
}

ButtonStyle elevatedButton() {
  return ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 58),
    textStyle: TextStyle(fontWeight: FontWeight.bold),
    backgroundColor: Colors.green,
    elevation: 0,
  );
}

SizedBox sizedBox(child) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: Container(
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}
