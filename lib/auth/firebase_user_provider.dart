import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RidingSocialFirebaseUser {
  RidingSocialFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RidingSocialFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RidingSocialFirebaseUser> ridingSocialFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RidingSocialFirebaseUser>(
            (user) => currentUser = RidingSocialFirebaseUser(user));
