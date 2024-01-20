import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:gym/features/auth/domain/domain.dart';
import 'package:gym/shared/shared.dart';

/// An implementation of [AuthService] that uses Firebase Authentication.
class FirebaseAuthService implements AuthService {
  final UsersDataSource usersDataSource;

  FirebaseAuthService(this.usersDataSource);

  @override
  Future<User?> getCurrentUser() async {
    var fUser = FirebaseAuth.instance.currentUser;

    if (fUser == null) {
      return null;
    }

    var dbUser = await usersDataSource.get(fUser.uid);

    return User(
      id: fUser.uid,
      name: fUser.displayName ?? '',
      email: fUser.email ?? '',
      registered: dbUser?.registered ?? false,
    );
  }

  @override
  bool isUserLoggedIn() => FirebaseAuth.instance.currentUser != null;

  @override
  Future<void> login(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> logout() => FirebaseAuth.instance.signOut();

  @override
  Future<void> registerUser(String email, String password) {
    return FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> setPassword(String password) {
    if (!isUserLoggedIn()) {
      throw Exception('User is not logged in');
    }

    return FirebaseAuth.instance.currentUser!.updatePassword(password);
  }
}
