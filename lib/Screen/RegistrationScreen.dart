import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Registrationscreen extends StatefulWidget {
  @override
  const Registrationscreen({super.key});
  @override
  State<Registrationscreen> createState() => _Registrationscreen();
}

class _Registrationscreen extends State<Registrationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(context),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Registration', style: headLineText()),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('First Name'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Last Name'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Mobile'),
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
                  child: buttonChild('Submit'),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have account?'),
                    SizedBox(width: 4),
                    Text('Sign in', style: TextStyle(color: green)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
