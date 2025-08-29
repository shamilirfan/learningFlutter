// ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () => mySnackbar(items[index]['title'], context),
//             child: Container(
//               margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
//               width: double.infinity,
//               height: 200,
//               decoration: BoxDecoration(color: Colors.amber),
//               child: Image.network(items[index]['img']!, fit: BoxFit.fill),
//             ),
//           );
//         },
//       ),