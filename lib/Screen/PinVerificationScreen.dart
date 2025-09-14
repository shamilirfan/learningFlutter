import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pinverificationscreen extends StatefulWidget {
  @override
  const Pinverificationscreen({super.key});
  @override
  State<Pinverificationscreen> createState() => _Pinverificationscreen();
}

class _Pinverificationscreen extends State<Pinverificationscreen> {
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
                Text('Pin Verification', style: headLineText()),
                SizedBox(height: 5),
                Text(
                  'A 6 digit verification pin will send to your email address',
                  style: subLineText(),
                ),
                SizedBox(height: 20),
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  appContext: context,
                  length: 6,
                  pinTheme: pinInput(context),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(microseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                ),
                SizedBox(height: 5),
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
