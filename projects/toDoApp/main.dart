import 'package:flutter/material.dart';
import 'HomePage.dart';
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
