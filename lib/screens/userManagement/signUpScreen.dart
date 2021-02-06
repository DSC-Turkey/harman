import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isLoading = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: SignUpForm(),
      ),
    );
  }

  Widget SignUpForm() {
    return Form(
      child: Column(
        children: [
          Text('Sign Up'),
          TextFormField(
            key: Key('nameFieldKey'),
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Enter User Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter User Name';
              }
              return null;
            },
          ),
          TextFormField(
            key: Key('emailFieldKey'),
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Enter Email',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter an Email Address';
              } else if (!value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          TextFormField(
            key: Key('passwordFieldKey'),
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Enter Password',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter Password';
              } else if (value.length < 6) {
                return 'Password must be at least 6 characters!';
              }
              return null;
            },
          ),
          isLoading
              ? CircularProgressIndicator()
              : RaisedButton(
            key: Key('submitButtonKey'),
            color: Colors.lightBlue,
            onPressed: null,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
