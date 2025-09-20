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
          onPressed: () {
            Get.bottomSheet(
              Container(
                height: 200,
                color: green,
                child: Column(
                  children: [
                    Text('data - 1', style: TextStyle(color: white)),
                    Text('data - 2', style: TextStyle(color: white)),
                    Text('data - 3', style: TextStyle(color: white)),
                    Text('data - 4', style: TextStyle(color: white)),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => Get.back(closeOverlays: true),
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ),
              enableDrag: true,
              isDismissible: false,
              barrierColor: Colors.yellow,
            );
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
