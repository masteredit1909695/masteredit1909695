import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Masteredit1909695FirebaseUser {
  Masteredit1909695FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Masteredit1909695FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Masteredit1909695FirebaseUser> masteredit1909695FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Masteredit1909695FirebaseUser>(
      (user) {
        currentUser = Masteredit1909695FirebaseUser(user);
        return currentUser!;
      },
    );
