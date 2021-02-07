import 'package:flutter/material.dart';
import 'package:harman2021hackathon/screens/userManagement/loginScreen.dart';
import 'package:harman2021hackathon/service/auth.dart';

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
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
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
            width: MediaQuery.of(context).size.width / 2,
          ),
          SizedBox(
            height: 30,
          ),
          isLoading
              ? CircularProgressIndicator()
              : RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  key: Key('resetButtonKey'),
                  color: Colors.white,
                  onPressed: _onPressedReset,
                  child: Text('Kurtarma kodu gönder',
                      style: TextStyle(color: Colors.black)),
                ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: Color.fromRGBO(38, 50, 56, 1),
            onPressed: _onPressedLogin,
            child: Text('giriş yap', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _onPressedReset() async {
    await AuthService.resetPassword(emailController.text);
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _onPressedLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
