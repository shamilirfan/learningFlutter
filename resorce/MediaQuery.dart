// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // MediaQuery
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     var orientation = MediaQuery.of(context).orientation;

//     TextStyle textStyle() {
//       if (width >= 600) {
//         return TextStyle(color: Colors.green, fontSize: 35);
//       } else {
//         return TextStyle(color: Colors.red, fontSize: 20);
//       }
//     }

//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Screen Width = $width", style: textStyle(),),
//             Text("Screen Height = $height"),
//             Text("Screen Orientation = $orientation"),
//           ],
//         ),
//       ),
//     );
//   }
// }
