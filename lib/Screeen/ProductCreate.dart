import 'package:flutter/material.dart';
import 'package:app1/style/style.dart';

class Productcreate extends StatefulWidget {
  const Productcreate({super.key});
  @override
  State<Productcreate> createState() => _ProductCreate();
}

class _ProductCreate extends State<Productcreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Product")),
      body: Stack(
        children: [
          // Background Graphics
          screenBackGround(context),
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {},
                    decoration: inputDecoration('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: inputDecoration('Product Code'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: inputDecoration('Product Image'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: inputDecoration('Unit Price'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: inputDecoration('Total Price'),
                  ),
                  SizedBox(height: 20),
                  decoratedBox(
                    DropdownButton(
                      value: "",
                      items: [
                        DropdownMenuItem(
                          value: '',
                          child: Text('Select Quantity'),
                        ),
                        DropdownMenuItem(
                          value: '1 Pice',
                          child: Text('1 Pice'),
                        ),
                        DropdownMenuItem(
                          value: '2 Pice',
                          child: Text('2 Pice'),
                        ),
                        DropdownMenuItem(
                          value: '3 Pice',
                          child: Text('3 Pice'),
                        ),
                        DropdownMenuItem(
                          value: '4 Pice',
                          child: Text('4 Pice'),
                        ),
                      ],
                      onChanged: (value) {},
                      underline: Container(),
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle(),
                    child: successButtonChild('Submit'),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
