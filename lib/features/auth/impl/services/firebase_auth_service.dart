import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:gym/features/auth/domain/domain.dart';

/// An implementation of [AuthService] that uses Firebase Authentication.
class FirebaseAuthService extends AuthService {
  final String referralsCollection;

  FirebaseAuthService(this.referralsCollection);

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
  Future<String> registerUser(
      String code, String email, String password) async {
    log.fine("Registering user with email $email");

    if (!await veryfyReferralCode(code)) {
      log.fine("Invalid referral code. Aborting");

      throw Exception("Invalid referral code");
    }

    try {
      var user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      log.fine("Email $email registered with id ${user.user?.uid}");

      return user.user!.uid;
    } catch (e) {
      log.fine("Failed to register user with email $email", e);

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
      log.fine(
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
      log.fine("Password reset code is invalid", e);

      return false;
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) {
    log.fine("Sending password reset email to $email");

    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  @override
  Future<bool> veryfyReferralCode(String code) async {
    log.fine("Verifying registration code");

    var doc = await FirebaseFirestore.instance
        .collection(referralsCollection)
        .doc(code)
        .get();

    if (!doc.exists) {
      log.fine("Referral code $code is invalid. No document found.");

      return false;
    }

    log.fine("Referral with id $code found. Checking validity");

    var referral = Referral.fromJson(doc.data()!);

    if (referral.referredUserId != null) {
      log.fine("Referral code $code is invalid. It has already been used.");

      return false;
    }

    log.fine("Referral code $code is valid");

    return true;
  }

  @override
  Future<String> generateReferralCode() async {
    if (!isUserLoggedIn()) {
      throw Exception("No user is currently logged in");
    }

    log.fine("Generating new referral code for user: ${getCurrentUserId()}");

    var code =
        FirebaseFirestore.instance.collection(referralsCollection).doc().id;

    log.fine("New referral code is $code. Saving to database.");

    var referral = Referral(
      code: code,
      userId: getCurrentUserId()!,
      referredUserId: null,
    );

    await FirebaseFirestore.instance
        .collection(referralsCollection)
        .doc(code)
        .set(referral.toJson());

    log.fine("Referral code saved to database");

    return code;
  }
}
