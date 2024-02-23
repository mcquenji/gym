import 'package:gym/shared/domain/domain.dart';

/// A service responsible for authentication.
abstract class AuthService extends Service {
  AuthService() : super("Auth");

  /// Logs in the user with the provided [email] and [password].
  ///
  /// Throws an [Eexception] if login fails.
  Future<void> login(String email, String password);

  /// Logs out the currently authenticated user.
  ///
  /// Throws an [Eexception] if no user is authenticated.
  Future<void> logout();

  /// Registers a new user with the provided [email] and [password].
  ///
  /// Note: A referral [code] is required to register a new user.
  ///
  /// Returns the id of the newly created user.
  Future<String> registerUser(String code, String email, String password);

  /// Sets the currently authenticated user's password to the provided [password].
  ///
  /// Note: The a code is required to reset the password. This code is sent to the user's email.
  Future<void> resetPassword(String code, String password);

  /// Returns true if a user is currently authenticated.
  bool isUserLoggedIn();

  /// Returns the id of the currently authenticated user or `null` if no user is authenticated.
  String? getCurrentUserId();

  /// Verifies the provided [code] is a valid password reset code.
  Future<bool> verifyPasswordResetCode(String code);

  /// Verifies the provided [code] is a valid registration code.
  Future<bool> verifyReferralCode(String code);

  /// Sends a password reset email to the user with the provided [email].
  Future<void> sendPasswordResetEmail(String email);

  /// Generates a new referral code for the currently authenticated user.
  ///
  /// Throws an [Exception] if no user is authenticated.
  Future<String> generateReferralCode();

  /// Registers a the first user with the provided [email] and [password] without a referral code.
  /// No referral code is required.
  ///
  /// Throws an [Exception] if the app already one or more users.
  ///
  /// Returns the id of the newly created user.
  Future<String> registerFirstUser(String email, String password);
}
