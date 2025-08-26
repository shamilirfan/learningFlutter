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
    var images = <String>[
      'https://c4.wallpaperflare.com/wallpaper/327/865/306/boat-tropical-beach-island-cove-hd-wallpaper-preview.jpg',
      'https://tse4.mm.bing.net/th/id/OIP.liYTHdMyJZHuCIs7PyQU2AHaD5?r=0&cb=thfc1&w=1900&h=1000&rs=1&pid=ImgDetMain&o=7&rm=3',
      'https://tse3.mm.bing.net/th/id/OIP.dvKl7mBOSq01p_H5LpPOBgHaEK?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
      'https://tse2.mm.bing.net/th/id/OIP.s4SAePe1s_gS9SuCj6HJ9wHaEC?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
      'https://tse1.mm.bing.net/th/id/OIP.bDX9zbqNPSe1w8AHDycYFwHaEK?r=0&cb=thfc1&w=1024&h=575&rs=1&pid=ImgDetMain&o=7&rm=3',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appBar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          for (int i = 0; i < 5; i++)
            Container(
              margin: EdgeInsets.all(3),
              color: Colors.purple,
              child: Image.network('${images[i]}'),
            ),
        ],
      ),
    );
  }
}
