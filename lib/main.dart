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
  // Input Decoration
  InputDecoration inputDecoration(label) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      labelText: label,
    );
  }

  // Map for form values
  Map<String, double> formValue = {"Number1": 0, "Number2": 0};
  double sum = 0;

  // method to set input value in map safely
  inputOnChange(inputKey, inputValue) {
    setState(() {
      formValue.update(inputKey, (value) => double.parse(inputValue));
    });
  }

  // Sum all numbers
  sumAllNumber() {
    setState(() {
      for (var item in formValue.values) {
        sum += item;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [
            Text("Sum = $sum", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),

            // First Number Input
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => inputOnChange("Number1", value),
              decoration: inputDecoration('First Number'),
            ),
            const SizedBox(height: 20),

            // Second Number Input
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => inputOnChange("Number2", value),
              decoration: inputDecoration('Second Number'),
            ),
            const SizedBox(height: 20),

            // Button
            ElevatedButton(
              onPressed: () => sumAllNumber(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shadowColor: Colors.pinkAccent,
                elevation: 5,
                minimumSize: const Size(double.infinity, 60),
              ),
              child: const Text(
                "Add",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
