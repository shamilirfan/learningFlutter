import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [splashScreen(context)]));
  }
}
