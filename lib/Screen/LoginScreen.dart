import 'package:app1/API/apiClient.dart';
import 'package:app1/Style/style.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _Loginscreen();
}

class _Loginscreen extends State<Loginscreen> {
  // Map
  Map<String, dynamic> formValues = {"email": "", "password": ""};

  // Loading
  bool loading = false;

  // Input on change
  void inputOnChange(String key, dynamic value) =>
      setState(() => formValues[key] = value);

  // Form Validation
  void formOnSubmit() async {
    if ((formValues['email'] as String).isEmpty) {
      errorToast('Email is Required!');
    } else if ((formValues['password'] as String).isEmpty) {
      errorToast('Password is Required!');
    } else {
      setState(() => loading = true);
      await loginRequest(formValues);
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(context),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Get Started With', style: headLineText()),
                const SizedBox(height: 5),
                Text('Learn with Rabbil Hasan', style: subLineText()),
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) => inputOnChange("email", value),
                  decoration: inputDecoration('Email Address'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) => inputOnChange("password", value),
                  decoration: inputDecoration('Password'),
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => formOnSubmit(),
                  style: buttonStyle(),
                  child: buttonChild("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
