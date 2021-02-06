import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController emailController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Center(
        child: resetPasswordForm(),
      ),
    );
  }

  Widget resetPasswordForm() {
    return Form(
      child: Column(
        children: [
          Text('Forgot your password?'),
          Text('We will send you a link to reset your password'),
          TextFormField(
            key: Key('emailFieldKey'),
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Enter Email Address',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter Email Address';
              } else if (!value.contains('@')) {
                return 'Please enter a valid email address!';
              }
              return null;
            },
          ),
          isLoading
              ? CircularProgressIndicator()
              : RaisedButton(
            key: Key('resetButtonKey'),
            color: Colors.lightBlue,
            onPressed: null,
            child: Text('Reset Password'),
          ),
        ],
      ),
    );
  }
}
