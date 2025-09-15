import 'dart:convert';
import 'package:app1/Style/style.dart';
import 'package:http/http.dart' as http;

// API Configuration
var baseURL = "https://task.teamrabbil.com/api/v1";
var requestHeader = {"Content-Type": "application/json"};

// Login Request
Future<bool> loginRequest(dynamic formValues) async {
  var url = Uri.parse("$baseURL/login");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody['status'] == "success") {
    successToast("Login Request Success");
    return true;
  } else {
    errorToast("Login Request Fail!");
    return false;
  }
}

// Registration Request
Future<bool> registrationRequest(dynamic formValues) async {
  var url = Uri.parse("$baseURL/registration");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody['status'] == 'success') {
    successToast('Registration Request Success');
    return true;
  } else {
    errorToast('Registration Request Fail!');
    return false;
  }
}

// Verify Email Request
Future<bool> verifyEmailRequest(dynamic email) async {
  var url = Uri.parse("$baseURL/registration");
  var response = await http.get(url, headers: requestHeader);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody['status'] == 'success') {
    successToast('Email Verify Request Success');
    return true;
  } else {
    errorToast('Email Verify Request Fail!');
    return false;
  }
}

// Verify OTP Request
Future<bool> verifyOTPRequest(dynamic email, otp) async {
  var url = Uri.parse("$baseURL/RecoverVerifyOTP/$email/$otp");
  var response = await http.post(url, headers: requestHeader);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody['status'] == 'success') {
    successToast('Verify OTP Request Success');
    return true;
  } else {
    errorToast('Verify OTP Request Fail!');
    return false;
  }
}

// Set Password Request
Future<bool> setPasswordRequest(dynamic formValues) async {
  var url = Uri.parse("$baseURL/RecoverResetPass");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody['status'] == 'success') {
    successToast('Set Password Request Success');
    return true;
  } else {
    errorToast('Set Password Request Fail!');
    return false;
  }
}
