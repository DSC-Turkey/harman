import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }

  Widget LoginForm() {
    return Form(
      child: Column(
        children: [
          Text('Sign In'),
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
                return 'Password must be atleast 6 characters!';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Sign up'),
                onPressed: null,
              ),
              FlatButton(
                child: Text('Forgot password?'),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
