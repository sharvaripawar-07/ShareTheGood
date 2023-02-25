import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LoginPageFirebaseUser {
  LoginPageFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LoginPageFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LoginPageFirebaseUser> loginPageFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LoginPageFirebaseUser>(
      (user) {
        currentUser = LoginPageFirebaseUser(user);
        return currentUser!;
      },
    );
