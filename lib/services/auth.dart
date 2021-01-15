import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  Future signInAnon() async {
    try {
      await _auth.signInAnonymously().then((value) {
        var user = value.user;
        return user;
      });
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in with email and password

//register with email and password

// sign out

}
