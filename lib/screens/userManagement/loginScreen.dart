import 'package:flutter/material.dart';
import 'package:harman2021hackathon/main.dart';
import 'package:harman2021hackathon/models/userModel.dart';
import 'package:harman2021hackathon/screens/mainScreens/homeScreen.dart';
import 'package:harman2021hackathon/screens/userManagement/resetPasswordScreen.dart';
import 'package:harman2021hackathon/screens/userManagement/signUpScreen.dart';
import 'package:harman2021hackathon/service/auth.dart';
import 'package:harman2021hackathon/service/database.dart';
import 'package:harman2021hackathon/themes/themes.dart';

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
      backgroundColor: ThemeColors.background,
      body: Center(
        child: LoginForm(),
      ),
    );
  }

  Widget LoginForm() {
    return Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              child: TextFormField(
                style: TextStyle(color: ThemeColors.fontColorLight),
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                key: Key('emailFieldKey'),
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'e-mail',
                    hintStyle: TextStyle(color: ThemeColors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.fontColorLight),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColors.white))),

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
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              child: TextFormField(
                style: TextStyle(color: ThemeColors.fontColorLight),
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                key: Key('passwordFieldKey'),
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'şifre',
                    hintStyle: TextStyle(color: ThemeColors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColors.white))),

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
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:
              Text('Şifremi unuttum.', style: TextStyle(color: ThemeColors.fontColorLight)),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => ResetPasswordPage()));
              },
            ),
            isLoading
                ? CircularProgressIndicator()
                : SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                key: Key('submitButtonKey'),
                color: ThemeColors.white,
                onPressed: _onPressed,
                child: Text('Onayla'),
              ),
            ),
            SizedBox(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color.fromRGBO(38, 50, 56, 1),
                child: Text('Kaydol', style: TextStyle(color: ThemeColors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              ),
            ),
          ],
        ));
  }

  void _onPressed() async {
    isLoading = true;
    bool result = await AuthService.signInWithEmail(
        emailController.text, passwordController.text);
    if (result == true) {
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavigationPage()));
      isLoading = false;
    }
    else {
      isLoading = false;
      //show snackbar
    }
  }
}
