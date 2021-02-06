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
      backgroundColor: Colors.black,
      body: Center(
        child: resetPasswordForm(),
      ),
    );
  }

  Widget resetPasswordForm() {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              key: Key('emailFieldKey'),
              controller: emailController,
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
                  return 'Enter Email Address';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email address!';
                }
                return null;
              },
            ),
            width: MediaQuery.of(context).size.width/2,
          ),
          SizedBox(height: 30,),
          isLoading
              ? CircularProgressIndicator()
              : RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            key: Key('resetButtonKey'),
            color: Colors.white,
            onPressed: () {

            },
            child: Text('Kurtarma kodu gönder', style: TextStyle(color: Colors.black)),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            color: Color.fromRGBO(38, 50, 56, 1),
            onPressed: () {

            },
            child: Text('giriş yap', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
