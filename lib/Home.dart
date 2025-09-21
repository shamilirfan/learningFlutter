import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'StateController.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final StateController counter = Get.put(StateController());

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: Obx(() => Text('${counter.count}'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increament(),
        child: Icon(Icons.add),
      ),
    );
  }
}
