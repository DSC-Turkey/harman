import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/userModel.dart';
import '../service/auth.dart';

class DatabaseService {
  static final fire = FirebaseFirestore.instance;
  static final CollectionReference userCollection = fire.collection('users');
  // static final CollectionReference userCollection = fire.collection('users');
  // static final CollectionReference lessonCollection = fire.collection('lessons');

  static void newUser({String userName, String email}) {
    var data = {
      'userId': null,
      'userName': userName,
      'email': email,
    };
    var userId = AuthService.getUserId();
    userCollection.doc(userId).set(data);
  }

  static void initUser() async {
    var cUser = await AuthService.auth.currentUser;

    var data = {
      'userId': cUser.uid,
    };
    var userId = AuthService.getUserId();
    await userCollection.doc(userId).update(data);
  }

  static void getUser() async {
    var cUser = await AuthService.auth.currentUser;

    var userDoc = await userCollection.doc(cUser.uid).get();
    var data = userDoc.data();
    user.id = data['userId'];
    user.userName = data['userName'];
    user.email = data['email'];
  }

  static void basicSearch(searchText) {
    // databaseReference.orderByChild('_searchLastName').startAt(searchText).endAt(searchText+"\uf8ff");
  }
}
