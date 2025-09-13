import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Setpasswordscreen extends StatefulWidget {
  @override
  const Setpasswordscreen({super.key});
  @override
  State<Setpasswordscreen> createState() => _Setpasswordscreen();
}

class _Setpasswordscreen extends State<Setpasswordscreen> {
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
                Text('Set Password', style: headLineText()),
                SizedBox(height: 5),
                Text(
                  'Minimum length password 8 character with letter and number combination',
                  style: subLineText(),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Password'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {},
                  decoration: inputDecoration('Confirm Password'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: buttonChild('Confirm'),
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
