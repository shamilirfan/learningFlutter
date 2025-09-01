import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageUI();
  }
}

class HomePageUI extends State<HomePage> {
  // count
  int count = 0;
  countFunction() => setState(() => count++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"), backgroundColor: Colors.blue),
      body: Center(child: Text("Counting Number : $count")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countFunction(),
        backgroundColor: Colors.blue,
        hoverColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
