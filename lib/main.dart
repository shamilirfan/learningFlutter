import 'package:flutter/gestures.dart';
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
  const HomePage({super.key});

  mySnackbar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: message));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appBar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (int i = 1; i <= 10; i++)
              Container(
                width: 500,
                height: 100,
                color: const Color.fromARGB(255, 252, 190, 2),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "$i",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
