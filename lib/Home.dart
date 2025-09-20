import 'package:app1/About.dart';
import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                GetStorage().write("Name", "Alice");
                GetStorage().write("Age", 25);
              },
              child: Text('Write data'),
            ),
            SizedBox(height: 6),
            ElevatedButton(
              onPressed: () {
                var name = GetStorage().read("Name");
                var age = GetStorage().read("Age");
                Get.snackbar(
                  'Name : $name',
                  'Age : $age',
                  backgroundColor: blue,
                  colorText: white,
                );
              },
              child: Text('Read data'),
            ),
            SizedBox(height: 6),
            ElevatedButton(
              onPressed: () {
                // GetStorage().erase();
                GetStorage().remove("Name");
              },
              child: Text('Erase data'),
            ),
          ],
        ),
      ),
    );
  }
}
