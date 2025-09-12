import '../RestAPI/RestClient.dart';
import 'ProductCreate.dart';
import '../Style/Style.dart';
import 'package:flutter/material.dart';
import 'ProductUpdate.dart';

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
  Future<void> callAPI() async {
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

  // Delete Product
  void deleteProduct(dynamic id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete!", style: TextStyle(color: red)),
          content: Text("Do you want to delete"),
          actions: [
            OutlinedButton(
              onPressed: () async {
                Navigator.pop(context);
                // setState(() => loading = true);
                await productDeleteRequest(id);
                await callAPI();
                // setState(() => loading = false);
              },
              child: Text("Yes"),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('No'),
            ),
          ],
        );
      },
    );
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
                : RefreshIndicator(
                    onRefresh: () async {
                      await callAPI();
                    },
                    child: (Padding(
                      padding: EdgeInsets.all(5),
                      child: GridView.builder(
                        gridDelegate: productGridViewStyle(),
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    // productList[index]['Img'],
                                    "https://t4.ftcdn.net/jpg/08/99/07/21/360_F_899072107_ywRRbo3uBYahT5EuJ8ibzqy4LwePT9rn.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(5, 0, 8, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 7),
                                      Text(
                                        "Name: ${productList[index]['ProductName']}",
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        "Price ${productList[index]['TotalPrice']}",
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ProductUpdate(
                                                        productList[index],
                                                      ),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.update,
                                              color: green,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          OutlinedButton(
                                            onPressed: () => deleteProduct(
                                              productList[index]['_id'],
                                            ),
                                            child: Icon(
                                              Icons.delete,
                                              color: red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => ProductCreate()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
