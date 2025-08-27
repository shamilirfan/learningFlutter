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

  // snackBar
  mySnackbar(message, BuildContext context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  // button style
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 245, 242, 242),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    foregroundColor: Colors.grey,
    shadowColor: Colors.red,
    elevation: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appBar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => mySnackbar("Text Button", context),
                child: Text("Text Button"),
              ),
              ElevatedButton(
                onPressed: () => mySnackbar("Elevated Button", context),
                child: Text("Elevated Button"),
                style: buttonStyle,
              ),
              OutlinedButton(
                onPressed: () => mySnackbar("Outline Button", context),
                child: Text("Outline Button"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
