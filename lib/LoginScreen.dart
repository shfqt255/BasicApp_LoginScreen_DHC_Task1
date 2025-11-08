// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final EmailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome Back! ", style: TextStyle(fontSize: 25)),
                Text("Login to your account", style: TextStyle(fontSize: 15, color: Colors.black45)),
SizedBox(height: 15,),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email required*";
                    }
                    if (!EmailRegex.hasMatch(value)) {
                      return "Enter valid email";
                    } else {
                      return null; // This Statement purpose is to remove the warning.
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Email"),
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    floatingLabelStyle: TextStyle(color: Colors.lightBlue),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                    ),
                  ),
                  cursorColor: Colors.black45,
                  cursorErrorColor: Colors.black45,
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password required*";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Password"),
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    floatingLabelStyle: TextStyle(color: Colors.lightBlue),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                    ),
                  ),
                  cursorColor: Colors.black45,
                  cursorErrorColor: Colors.black45,
                ),
                // NOTE: FlatButton is deprecated and shows an error. So I am using TextButton instead.
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password? ',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                     padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
