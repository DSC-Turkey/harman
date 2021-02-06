import 'package:flutter/material.dart';

import 'loginScreen.dart';
import 'resetPasswordScreen.dart';
import 'signUpScreen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
            child: Text('sign in'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
        RaisedButton(
            child: Text('sign up'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            }),
        RaisedButton(
            child: Text('reset password'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPasswordPage()));
            }),
      ],
    );
  }
}
