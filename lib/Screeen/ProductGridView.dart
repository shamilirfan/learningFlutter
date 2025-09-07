import 'package:app1/style/style.dart';
import 'package:flutter/material.dart';
import 'package:app1/RestAPI/RestClient.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({super.key});
  @override
  State<ProductGridView> createState() => _ProductGridView();
}

class _ProductGridView extends State<ProductGridView> {
  // Product List
  var productList = [];
  bool Loading = false;

  // data calling method
  void callData() async {
    Loading = true;
    var data = await ProductGridViewListRequest();
    setState(() {
      productList = data;
      Loading = false;
    });
  }

  // initState method
  @override
  void initState() {
    callData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: Stack(
        children: [
          screenBackGround(context),
          Container(
            child: Loading
                ? (Center(child: CircularProgressIndicator()))
                : (GridView.builder(
                    gridDelegate: ProductGridViewStyle(),
                    itemBuilder: (context, int index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Image.network(
                                productList[index]['Img'],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
          ),
        ],
      ),
    );
  }
}
