import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => getxSnackbar(),
          child: Text('Click'),
        ),
      ),
    );
  }
}
