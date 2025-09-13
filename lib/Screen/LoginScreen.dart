import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  @override
  const Loginscreen({super.key});
  @override
  State<Loginscreen> createState() => _Loginscreen();
}

class _Loginscreen extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(context),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Get Started With', style: headLineText()),
                SizedBox(height: 5),
                Text('Learn with Rabbil Hasan', style: subLineText()),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Email Address'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Password'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: buttonChild("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
