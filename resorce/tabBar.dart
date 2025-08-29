// class homeFragmant extends StatelessWidget {
//   homeFragmant({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "Home Fragmant",
//         style: TextStyle(color: Colors.grey, fontSize: 25),
//       ),
//     );
//   }
// }

// class personFragmant extends StatelessWidget {
//   personFragmant({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "Person Fragmant",
//         style: TextStyle(color: Colors.grey, fontSize: 25),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("This is title", style: TextStyle(color: Colors.white)),
//           bottom: TabBar(
//             // isScrollable: true,
//             tabs: [
//               Tab(icon: Icon(Icons.home), text: 'Home'),
//               Tab(icon: Icon(Icons.person), text: 'Person'),
//               Tab(icon: Icon(Icons.contact_emergency), text: 'Contact'),
//               Tab(icon: Icon(Icons.email), text: 'Email'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             homeFragmant(),
//             personFragmant(),
//             Text("Contact Fragmant"),
//             Text("Email Fragmant"),
//           ],
//         ),
//       ),
//     );
//   }
// }
