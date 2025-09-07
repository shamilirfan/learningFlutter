import 'package:app1/RestAPI/RestClient.dart';
import 'package:flutter/material.dart';
import 'package:app1/style/style.dart';

class Productcreate extends StatefulWidget {
  const Productcreate({super.key});
  @override
  State<Productcreate> createState() => _ProductCreate();
}

class _ProductCreate extends State<Productcreate> {
  // Map
  Map<String, dynamic> formValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Quantity": "",
    "TotalPrice": "",
    "UnitPrice": "",
  };

  // Input on Change Method
  void inputOnChange(String key, dynamic value) {
    setState(() {
      formValues[key] = value;
    });
  }

  // input validation
  void formOnSubmit() async {
    if (formValues['Img']!.length == 0) {
      errorToast('Image is required');
    } else if (formValues['ProductCode']!.length == 0) {
      errorToast('Product Code is required');
    } else if (formValues['ProductName']!.length == 0) {
      errorToast('Product Name is required');
    } else if (formValues['Quantity']!.length == 0) {
      errorToast('Quantity is required');
    } else if (formValues['TotalPrice']!.length == 0) {
      errorToast('Total Price is required');
    } else if (formValues['UnitPrice']!.length == 0) {
      errorToast('Unit Price is required');
    } else {
      // Data Rest API
      await ProductCreateRequest(formValues);
    }
  }

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
                    onChanged: (value) {
                      inputOnChange('ProductName', value);
                    },
                    decoration: inputDecoration('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      inputOnChange('ProductCode', value);
                    },
                    decoration: inputDecoration('Product Code'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      inputOnChange('Img', value);
                    },
                    decoration: inputDecoration('Product Image'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      inputOnChange('UnitPrice', value);
                    },
                    decoration: inputDecoration('Unit Price'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      inputOnChange('TotalPrice', value);
                    },
                    decoration: inputDecoration('Total Price'),
                  ),
                  SizedBox(height: 20),
                  decoratedBox(
                    DropdownButton(
                      value: formValues['Quantity'].isEmpty
                          ? null
                          : formValues['Quantity'],
                      hint: Text("Select Quantity"),
                      items: const [
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
                      onChanged: (value) {
                        inputOnChange('Quantity', value);
                      },
                      underline: Container(),
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => formOnSubmit(),
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
