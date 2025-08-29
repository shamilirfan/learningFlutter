// GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 5,
//           childAspectRatio: 1.7,
//         ),
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () => mySnackbar(items[index]['title'], context),
//             child: Container(
//               margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
//               width: double.infinity,
//               height: 200,
//               decoration: BoxDecoration(color: Colors.amber),
//               child: Image.network(items[index]['img']!, fit: BoxFit.fill),
//             ),
//           );
//         },
//       ),