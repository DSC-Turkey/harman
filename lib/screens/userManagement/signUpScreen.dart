import 'package:flutter/material.dart';
import 'package:harman2021hackathon/service/auth.dart';
import 'package:harman2021hackathon/service/database.dart';
import 'package:harman2021hackathon/themes/themes.dart';
import 'loginScreen.dart';

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
      backgroundColor: ThemeColors.background,
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
            width: MediaQuery.of(context).size.width / 2,
            child: TextFormField(
              style: TextStyle(color: ThemeColors.fontColorLight),
              cursorColor: ThemeColors.white,
              textAlign: TextAlign.center,
              key: Key('nameFieldKey'),
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Kullanıcı adı',
                  hintStyle: TextStyle(color: ThemeColors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeColors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.white))),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Kullanıcı adı giriniz';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextFormField(
              style: TextStyle(color: ThemeColors.fontColorLight),
              cursorColor: ThemeColors.white,
              textAlign: TextAlign.center,
              key: Key('nameFieldKey'),
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'e-mail',
                  hintStyle: TextStyle(color: ThemeColors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeColors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.white))),
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
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextFormField(
                style: TextStyle(color: ThemeColors.fontColorLight),
                cursorColor: ThemeColors.white,
                textAlign: TextAlign.center,
                key: Key('emailFieldKey'),
                controller: passwordController,
                obscureText: true,
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
                    return 'şifre en az 6 basamaklı olmalı';
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          isLoading
              ? CircularProgressIndicator()
              : Row(
                  children: [
                    Spacer(),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      onPressed: onPressedGotAcc,
                      color: ThemeColors.white,
                      child: Text('Hesabım var',
                          style: TextStyle(color: ThemeColors.fontColorDark)),
                    ),
                    Spacer(),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      key: Key('submitButtonKey'),
                      color: ThemeColors.white,
                      onPressed: _onPressedSubmit,
                      child: Text('kaydol',
                          style: TextStyle(color: ThemeColors.fontColorDark)),
                    ),
                    Spacer(),
                  ],
                )
        ],
      ),
    );
  }

  void onPressedGotAcc() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _onPressedSubmit() async {
    isLoading = true;
    var result = await AuthService.signUpWithEmail(
        emailController.text, passwordController.text);
    if (result == true) {
      DatabaseService.newUser(
        userName: nameController.text,
        email: emailController.text,
      );

      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
      isLoading = false;
    } else {
      isLoading = false;
      ShowErrorMessage(
        type: 'testType',
        errMessage: 'testErrorMessage',
      );
    }
  }
}
