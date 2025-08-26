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
      body:
          // Container(
          //   width: 250,
          //   height: 250,
          //   // height: 170,
          //   alignment: Alignment.topCenter,
          //   margin: EdgeInsets.all(50),
          //   padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          //   decoration: BoxDecoration(
          //     color: Colors.teal,
          //     border: Border.all(width: 5, color: Colors.amberAccent),
          //   ),
          //   child: Image.network(
          //     'https://tse4.mm.bing.net/th/id/OIP.y6PMbjNmo-X75RBTMrarHQHaE7?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://tse4.mm.bing.net/th/id/OIP.-sm4kru2JTCp1GgdSNagsgHaEK?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://tse4.mm.bing.net/th/id/OIP.hjK5zzIi77QYygIY7ZT3VQAAAA?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://tse4.mm.bing.net/th/id/OIP.2eB7y0ihrtZYzizARUuDkwHaE8?r=0&cb=thfc1&w=1269&h=846&rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
              ),
            ],
          ),
    );
  }
}
