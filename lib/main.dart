import 'package:flutter/material.dart';
import 'package:app1/Screeen/ProductCreate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      title: 'CRUD App',
      debugShowCheckedModeBanner: false,
      home: Productcreate(),
    );
  }
}
