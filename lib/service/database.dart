import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/userModel.dart';
import '../service/auth.dart';

class DatabaseService {
  static final fire = FirebaseFirestore.instance;
  static final CollectionReference userCollection = fire.collection('users');

  void newUser({String userName, String email}) {
    var data = {
      'userId': null,
      'userName': userName,
      'email': email,
    };
    var userId = AuthService.getUserId();
    userCollection.doc(userId).set(data);
  }

  void initUser() {
    var userId = AuthService.getUserId();
    var userDoc = userCollection.doc(userId).snapshots().;

    user.id = userId;
    user.userName = ;
  }
}
