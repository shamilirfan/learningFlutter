import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, About Page!"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/');
              },
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
