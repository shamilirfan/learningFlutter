import 'package:app1/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => HomePageUI();
}

class HomePageUI extends State<HomePage> {
  // List of item
  List<String> toDo = ['Japan', 'South Korea', 'Taiwan', 'China'];
  String item = "";

  // onPressed in add button
  onPress() {
    setState(() {
      toDo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To Do App'), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 75,
                    child: TextFormField(
                      onChanged: (value) => item = value,
                      decoration: inputDecoration('Add item'),
                    ),
                  ),
                  Expanded(flex: 1, child: Text('')),
                  Expanded(
                    flex: 24,
                    child: ElevatedButton(
                      onPressed: () => onPress(),
                      style: elevatedButton(),
                      child: Text("Add"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: toDo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Card(
                      child: sizedBox(
                        Row(
                          children: [
                            Expanded(flex: 90, child: Text(toDo[index])),
                            Expanded(
                              flex: 10,
                              child: TextButton(
                                onPressed: () {},
                                child: Icon(Icons.delete),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
