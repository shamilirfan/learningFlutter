import '../RestAPI/RestClient.dart';
import 'package:flutter/material.dart';
import '../Style/Style.dart';

class ProductCreate extends StatefulWidget {
  @override
  const ProductCreate({super.key});
  @override
  State<ProductCreate> createState() => _ProductCreate();
}

class _ProductCreate extends State<ProductCreate> {
  // Map
  Map<String, dynamic> formValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Quantity": "",
    "TotalPrice": "",
    "UnitPrice": "",
  };

  // input on Change
  void inputOnChange(String key, dynamic value) =>
      setState(() => formValues[key] = value);

  // Loading
  bool loading = false;

  // form submit
  void formSubmit() async {
    if (formValues["Img"]!.length == 0) {
      errorToast('Image is required');
    } else if (formValues["ProductCode"]!.length == 0) {
      errorToast('Product Code is required');
    } else if (formValues["ProductName"]!.length == 0) {
      errorToast('Product Name is required');
    } else if (formValues["Quantity"]!.length == 0) {
      errorToast('Quantity is required');
    } else if (formValues["TotalPrice"]!.length == 0) {
      errorToast('Total Price is required');
    } else if (formValues["UnitPrice"]!.length == 0) {
      errorToast('Unit Price Price is required');
    } else {
      setState(() => loading = true);
      await productCreateRequest(formValues);
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product', style: TextStyle(color: white)),
        backgroundColor: green,
        elevation: 2,
      ),
      body: Stack(
        children: [
          backGround(context),
          // Loading
          Container(
            child: loading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) =>
                              inputOnChange('ProductName', value),
                          decoration: inputDecoration('Product Name'),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) =>
                              inputOnChange('ProductCode', value),
                          decoration: inputDecoration('Product Code'),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) => inputOnChange('Img', value),
                          decoration: inputDecoration('Product Image'),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) =>
                              inputOnChange('UnitPrice', value),
                          decoration: inputDecoration('Unit Price'),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) =>
                              inputOnChange('TotalPrice', value),
                          decoration: inputDecoration('Total Price'),
                        ),
                        SizedBox(height: 20),
                        DecoratedBox(
                          decoration: boxDecoration(),
                          child: dropdownMenu(
                            DropdownButton<String>(
                              value: formValues['Quantity'].isEmpty
                                  ? null
                                  : formValues['Quantity'],
                              hint: Text("Select Quantity"),
                              items: const [
                                DropdownMenuItem(
                                  value: '1 Piece',
                                  child: Text('1 Piece'),
                                ),
                                DropdownMenuItem(
                                  value: '2 Piece',
                                  child: Text('2 Piece'),
                                ),
                                DropdownMenuItem(
                                  value: '3 Piece',
                                  child: Text('3 Piece'),
                                ),
                                DropdownMenuItem(
                                  value: '4 Piece',
                                  child: Text('4 Piece'),
                                ),
                              ],
                              onChanged: (String? value) {
                                if (value != null) {
                                  inputOnChange('Quantity', value);
                                }
                              },
                              underline: Container(),
                              isExpanded: true,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () => formSubmit(),
                          style: buttonStyle(),
                          child: buttonChild('Submit'),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
