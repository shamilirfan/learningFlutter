import 'package:app1/Screeen/ProductGridView.dart';
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
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: Productgridview(),
    );
  }
}
