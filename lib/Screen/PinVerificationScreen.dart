import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

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
              children: [
                Text('Pin Verification'),
                Text('Pin Verification'),
                Row(children: []),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: buttonChild('Verify'),
                ),
                Row(children: [Text('data'), SizedBox(width: 4), Text('data')]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
