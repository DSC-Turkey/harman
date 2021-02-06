

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
      backgroundColor: Colors.black,
      body: Center(
        child: SignUpForm(),
      ),
    );
  }

  Widget SignUpForm() {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/2,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              textAlign: TextAlign.center,
              key: Key('passwordFieldKey'),
              obscureText: true,
              controller: passwordController,
              decoration:InputDecoration(
                  hintText: 'Kulllanıcı adı',
                  hintStyle: TextStyle(color: Colors.white54),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Kullanıcı adı';
                } return null;
              },
            ),),
          SizedBox(
            width: MediaQuery.of(context).size.width/2,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              textAlign: TextAlign.center,
            key: Key('nameFieldKey'),
            controller: nameController,
            decoration: InputDecoration(
                hintText: 'e-mail',
                hintStyle: TextStyle(color: Colors.white54),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter User Name';
              }
              return null;
            },
          ),),
          SizedBox(
            width: MediaQuery.of(context).size.width/2,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                key: Key('emailFieldKey'),
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'şifre',
                    hintStyle: TextStyle(color: Colors.white54),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
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
            ),),
          SizedBox(height: 30,),
          isLoading
              ? CircularProgressIndicator()
              : Row(
            children: [
              Spacer(),
              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () {
                  print('a');
                },
                color: Colors.white,
                child: Text('Hesabım var', style: TextStyle(color: Colors.black)),
              ),
              Spacer(),
              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                key: Key('submitButtonKey'),
                color: Colors.white,
                onPressed: () {
                 print('a');
                },
                child: Text('kaydol', style: TextStyle(color: Colors.black)),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
