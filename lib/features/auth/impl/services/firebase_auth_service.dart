import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:gym/features/auth/domain/domain.dart';

/// An implementation of [AuthService] that uses Firebase Authentication.
class FirebaseAuthService extends AuthService {
  final String referralsCollection;
  final String usersCollection;

  FirebaseAuthService(this.referralsCollection, this.usersCollection);

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
    email = email.trim();
    password = password.trim();

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
    email = email.trim();
    password = password.trim();

    log.fine("Registering user with email $email");

    if (!await verifyReferralCode(code)) {
      log.fine("Invalid referral code. Aborting");

      throw Exception("Invalid referral code");
    }

    try {
      var user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final id = user.user!.uid;

      log.fine(
          "Email $email registered with id $id. Invalidating referral code.");

      await FirebaseFirestore.instance
          .collection(referralsCollection)
          .doc(code)
          .update({"referredUserId": id});

      return id;
    } catch (e) {
      log.fine("Failed to register user with email $email", e);

      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String code, String password) async {
    password = password.trim();

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
  Future<bool> verifyPasswordResetCode(String code) async {
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
  Future<bool> verifyReferralCode(String code) async {
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

    if (referral.referredUserId == null) {
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

  @override
  Future<String> registerFirstUser(String email, String password) async {
    log.fine("Registering first user with email $email");

    var collection =
        await FirebaseFirestore.instance.collection(usersCollection).get();

    if (collection.docs.isEmpty) {
      log.fine("No users found. Registering first user");

      var creds = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      log.fine("First user registered");

      return creds.user!.uid;
    } else {
      log.fine("Users found. Aborting registration");

      throw Exception("App already has one or more users");
    }
  }
}
