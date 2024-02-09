import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:gym/features/auth/domain/domain.dart';

/// An implementation of [AuthService] that uses Firebase Authentication.
class FirebaseAuthService extends AuthService {
  @override
  String? getCurrentUserId() {
    log.fine("Getting current user id");

    var id = FirebaseAuth.instance.currentUser?.uid;

    if (id == null) {
      log.fine("No user is currently logged in");
    } else {
      log.fine("Current user id is $id");
    }

    return id;
  }

  @override
  bool isUserLoggedIn() => FirebaseAuth.instance.currentUser != null;

  @override
  Future<void> login(String email, String password) async {
    log.fine("Logging in user with email $email");

    try {
      var user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      log.fine("User successfully logged with id ${user.user?.uid}");
    } catch (e) {
      log.severe("Failed to login user with email $email", e);

      rethrow;
    }
  }

  @override
  Future<void> logout() {
    log.fine("Logging out user");

    return FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> registerUser(String email, String password) async {
    log.fine("Registering user with email $email");

    try {
      var user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      log.fine("Email $email registered with id ${user.user?.uid}");
    } catch (e) {
      log.severe("Failed to register user with email $email", e);

      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String code, String password) async {
    log.fine("Attempting to reset password");

    try {
      await FirebaseAuth.instance.confirmPasswordReset(
        code: code,
        newPassword: password,
      );

      log.fine("Password reset successfull");
    } catch (e) {
      log.severe(
        "Failed to change password for current user. This is possibly because the provided reset code is invalid.",
        e,
      );

      rethrow;
    }
  }

  @override
  Future<bool> veryfyPasswordResetCode(String code) async {
    log.fine("Verifying password reset code");

    try {
      await FirebaseAuth.instance.verifyPasswordResetCode(code);

      log.fine("Password reset code is valid");

      return true;
    } catch (e) {
      log.severe("Password reset code is invalid", e);

      return false;
    }
  }
}
