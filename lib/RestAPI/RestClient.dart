import 'dart:convert';
import 'package:app1/style/style.dart';
import 'package:http/http.dart' as http;

// Get Method
Future<List> ProductGridViewListRequest() async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
  var PostHeader = {'Content-Type': 'application/json'};
  var response = await http.get(URL, headers: PostHeader);

  if (response.statusCode == 200 &&
      jsonDecode(response.body)['status'] == "success") {
    successToast("Request Success");
    return jsonDecode(response.body)['data'];
  } else {
    errorToast("Request fail! try again");
    return [];
  }
}

// Post Method
Future<bool> ProductCreateRequest(formValues) async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody = jsonEncode(formValues);
  var PostHeader = {'Content-Type': 'application/json'};
  var response = await http.post(URL, headers: PostHeader, body: PostBody);
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  if (resultCode == 200 && resultBody['status'] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request fail! try again");
    return false;
  }
}
