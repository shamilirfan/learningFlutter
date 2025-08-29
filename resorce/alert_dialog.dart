// alertDialog(context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Expanded(
//           child: AlertDialog(
//             title: Text("Welcome"),
//             content: Text("Do you want to accept?"),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   mySnackbar('Accepted', context);
//                 },
//                 child: Text("Yes"),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text("No"),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
