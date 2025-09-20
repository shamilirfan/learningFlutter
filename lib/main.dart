import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      title: 'Getx',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
