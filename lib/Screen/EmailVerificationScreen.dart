import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Emailverificationscreen extends StatefulWidget {
  @override
  const Emailverificationscreen({super.key});
  @override
  State<Emailverificationscreen> createState() => _Emailverificationscreen();
}

class _Emailverificationscreen extends State<Emailverificationscreen> {
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
                Text('Your Email Address', style: headLineText()),
                SizedBox(height: 5),
                Text(
                  'A 6 digit verification pin will send to your email address',
                  style: subLineText(),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration("Email"),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: buttonChild('Verify'),
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
