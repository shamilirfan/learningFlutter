import 'package:app1/About.dart';
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
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: '/About',
          page: () => About(),
          transition: Transition.rightToLeft,
        ),
      ],
    );
  }
}
