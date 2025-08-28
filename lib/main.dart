import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.grey, useMaterial3: false),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // arr
  var colors = [Colors.red.shade100, Colors.red.shade200, Colors.red.shade300];

  // snackBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appBar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 3,
          childAspectRatio: 10 / 5,
        ),
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(1),
            child: Image.network(
              'https://media.traveldepartment.co.uk/dmxa8n1ci/image/upload/g_auto,f_auto,q_auto:best,c_lfill,w_1000/v1702399585/unesco_sites_in_japan_ed1a895ec1',
            ),
          );
        },
      ),
    );
  }
}
