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
      theme: ThemeData(useMaterial3: false),
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
        title: Text("This is appBar title"),
        backgroundColor: Colors.blue,
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () => mySnackbar(Text("settings"), context),
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () => mySnackbar(Text("search"), context),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Text("Hello Body!"),
      backgroundColor: Colors.amberAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          mySnackbar(Text("I'm Floating Action Button"), context);
        },
        elevation: 6,
        child: Icon(Icons.add),
      ),
    );
  }
}
