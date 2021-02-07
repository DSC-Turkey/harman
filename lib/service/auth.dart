import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

/// "Firebase Authentication" eklentisinden faydalanarak üye işlemlerini yapar.
///
/// - E-maille kaydolma
/// - E-maille giriş
/// - Mevcut hesaptan çıkış
/// - Şifre sıfırlama
///
/// ```
/// uygulamayı başlatmadan önce
/// authService.init();
///
/// kullanılacak yerde
/// authService.signOut();
/// ```
// TODO: İlerde ayrı github projesine ayrılabilir.
class AuthService {
  static final auth = FirebaseAuth.instance;

  /// Hazırda giriş yapmış kullanıcı olup olmadığına dair yönlendirme yapar.
  /// Hazırda kullanıcı varsa ana sayfaya ([homePage]) yoksa giriş sayfasına ([loginPage]) yönlendirir.
  static Widget authHandler(
      BuildContext context, Widget homePage, Widget loginPage) {
    return StreamBuilder(
        stream: auth.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            throw snapshot.error.toString();
          } else if (snapshot.hasData) {
            print('debug: user detected');
            return homePage; //main page
          } else {
            print('debug: user not found');
            return loginPage; //login page
          }
        });
  }

  /// E-mail ile kaydolmayı sağlar.
  static Future signUpWithEmail(String email, String password) async {
    try {
      print('debug: signing up with email...');
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print('debug: signed up with email.');
      return true;
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      return false;
    } catch (err) {
      print('sign up email error = $err');
      return null;
    }
  }

  /// E-mail ile giriş yapmayı sağlar.
  static Future signInWithEmail(String email, String password) async {
    try {
      print('debug: signing in with email...');
      //region Cihaza kullanıcıyı kaydetme
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      //endregion
      await auth.signInWithEmailAndPassword(email: email, password: password);
      print('debug: signed in with email.');
      return true;
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      return false;
    } catch (err) {
      print('sign in email error = $err');
      return null;
    }
  }

  /// Kullanıcıyı hesaptan çıkarır.
  /// Cihaza kayıtlı e-mail adresini de siler.
  static Future signOut() async {
    try {
      print('debug: signing out...');
      //region Kullanıcıyı cihazdan silme
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', null);
      //endregion
      await auth.signOut();
      print('debug: signed out.');
      return true;
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      return false;
    } catch (err) {
      print('sign out error = $err');
      return null;
    }
  }

  /// Hesap şifresini sıfırlamak için kullanıcıya kayıtlı e-mail adresine şifre sıfırlama maili gönderir.
  static Future resetPassword(String email) async {
    try {
      print('debug: reseting password...');
      await auth.sendPasswordResetEmail(email: email);
      print('debug: reset password email sent');
      return true;
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      return false;
    } catch (err) {
      print(err);
      return null;
    }
  }
}

/// Alttan çıkan uyarı mesajı
/// Örnek koddur. Hata dönüşlerinden sonra 'Widget' içerisine eklenir.
class ShowErrorMessage extends StatelessWidget {
  final String type;
  final String errMessage;


  ShowErrorMessage({this.type, this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('Error $type'),
        content: Text(errMessage),
        actions: [
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
