import 'package:app1/Screen/RegistrationScreen.dart';
import 'package:app1/Screen/emailVerificationScreen.dart';
import 'package:app1/Screen/loginScreen.dart';
import 'package:app1/Screen/pinVerificationScreen.dart';
import 'package:app1/Screen/setPasswordScreen.dart';
import 'package:app1/Screen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splashscreen(),
        '/login': (context) => Loginscreen(),
        '/registration': (context) => Registrationscreen(),
        '/emailVerification': (context) => Emailverificationscreen(),
        '/pinVerification': (context) => Pinverificationscreen(),
        '/setPassword': (context) => Setpasswordscreen(),
      },
    );
  }
}
