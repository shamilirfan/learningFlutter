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
        title: Text("This is title"),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () => mySnackbar(Text("settings"), context),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      //body: Text("Hello Body!"),
      backgroundColor: Colors.amberAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          mySnackbar(Text("I'm Floating Action Button"), context);
        },
        elevation: 5,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) mySnackbar(Text("Home"), context);
          if (index == 1) mySnackbar(Text("Message"), context);
          if (index == 2) mySnackbar(Text("Profile"), context);
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Shamil Irfan",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "shamilirfan28@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://tse3.mm.bing.net/th/id/OIP.-edFDcSqlon5xMykpg5qMgHaEK?r=0&cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3",
                ),
                currentAccountPictureSize: Size(130, 80),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => mySnackbar(Text("Home List Tile"), context),
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
            ),
            ListTile(leading: Icon(Icons.album), title: Text("Album")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
            ListTile(leading: Icon(Icons.email), title: Text("Email")),
            ListTile(leading: Icon(Icons.photo), title: Text("Photo")),
          ],
        ),
      ),
    );
  }
}
