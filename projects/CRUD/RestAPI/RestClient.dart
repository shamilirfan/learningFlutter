import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Style/Style.dart';

// Get Method
Future<List> productGetRequest() async {
  var url = "https://crud.teamrabbil.com/api/v1/ReadProduct";
  var uri = Uri.parse(url);
  var getHeader = {'Content-Type': 'application/json'};
  var response = await http.get(uri, headers: getHeader);
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  // condition
  if (resultCode == 200 && resultBody['status'] == 'success') {
    successToast('Get Request Success');
    return resultBody['data'];
  } else {
    errorToast('Get Request Fail!');
    return [];
  }
}

// Post Method
Future<bool> productCreateRequest(dynamic formValues) async {
  var url = "https://crud.teamrabbil.com/api/v1/CreateProduct";
  var uri = Uri.parse(url);
  var postBody = jsonEncode(formValues);
  var postHeader = {'Content-Type': 'application/json'};
  var response = await http.post(uri, headers: postHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  // condition
  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast('Post Request Success');
    return true;
  } else {
    errorToast('Post Request Fail!');
    return false;
  }
}

// Delete Method
Future<bool> productDeleteRequest(dynamic id) async {
  var url = "https://crud.teamrabbil.com/api/v1/DeleteProduct/$id";
  var uri = Uri.parse(url);
  var deleteHeader = {"Content-Type": "application/json"};
  var response = await http.get(uri, headers: deleteHeader);
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  // condition
  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast('Delete Request Success');
    return true;
  } else {
    errorToast('Delete Request Fail!');
    return false;
  }
}

// Update Method
Future<bool> productUpdateRequest(dynamic formValues, id) async {
  var url = "https://crud.teamrabbil.com/api/v1/UpdateProduct/$id";
  var uri = Uri.parse(url);
  var updateBody = jsonEncode(formValues);
  var updateHeader = {'Content-Type': 'application/json'};
  var response = await http.post(uri, headers: updateHeader, body: updateBody);
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  // condition
  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast('Update Request Success');
    return true;
  } else {
    errorToast('Update Request Fail!');
    return false;
  }
}
