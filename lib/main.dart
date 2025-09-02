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
  State<StatefulWidget> createState() => HomePageUI();
}

class HomePageUI extends State<HomePage> {
  // style text field
  InputDecoration inputDecoration(labelTxt) {
    return InputDecoration(
      labelText: labelTxt,
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white,
      hoverColor: Colors.white,
    );
  }

  // button style
  ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      minimumSize: Size(double.infinity, 55),
      textStyle: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  // map
  Map<String, double> formValue = {"form1": 0, "form2": 0};
  double sum = 0;

  // on change function
  onChanged(inputKey, inputValue) {
    setState(
      () => formValue.update(inputKey, (value) => double.parse(inputValue)),
    );
  }

  // sum All
  sumAll() {
    setState(() {
      for (var item in formValue.values) {
        sum += item;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sum App'), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [
            Text('Sum = $sum', style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) => onChanged('form1', value),
              decoration: inputDecoration("First Number"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) => onChanged('form2', value),
              decoration: inputDecoration("Second Number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => sumAll(),
              style: buttonStyle(),
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
