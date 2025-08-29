//  Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'First Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Last Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email Address',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: ElevatedButton(
//               onPressed: () => mySnackbar('Submitted', context),
//               child: Text('Submit'),
//               style: ElevatedButton.styleFrom(
//                 minimumSize: Size(double.infinity, 60),
//                 backgroundColor: Colors.blue,
//                 foregroundColor: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),