import 'package:app1/RestAPI/RestClient.dart';
import 'package:app1/style/style.dart';
import 'package:flutter/material.dart';

class Productgridview extends StatefulWidget {
  @override
  const Productgridview({super.key});
  @override
  State<Productgridview> createState() => _Productgridview();
}

class _Productgridview extends State<Productgridview> {
  // Product List
  var productList = [];
  // Loading
  bool loading = false;

  // API calling method
  void callAPI() async {
    loading = true;
    var data = await productGetRequest();

    setState(() {
      productList = data;
      loading = false;
    });
  }

  // initState method
  @override
  void initState() {
    callAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: Stack(
        children: [
          backGround(context),
          Container(
            child: loading
                ? (Center(child: CircularProgressIndicator()))
                : (Padding(
                    padding: EdgeInsets.all(5),
                    child: GridView.builder(
                      gridDelegate: productGridViewStyle(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  productList[index]['Img'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )),
          ),
        ],
      ),
    );
  }
}
