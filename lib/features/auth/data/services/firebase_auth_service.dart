import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:gym/features/auth/domain/domain.dart';

/// An implementation of [AuthService] that uses Firebase Authentication.
class FirebaseAuthService implements AuthService {
  @override
  String? getCurrentUserId() => FirebaseAuth.instance.currentUser?.uid;

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
