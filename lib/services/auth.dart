import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  Future signInAnon() async {
    try {
      var user;
      await _auth.signInAnonymously().then((value) {
         user = value.user;
      });
      print('user $user') ;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in with email and password

//register with email and password

// sign out

}
