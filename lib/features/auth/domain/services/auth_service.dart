import 'package:gym/shared/domain/domain.dart';

/// A service responsible for authentication.
abstract class AuthService extends Service {
  AuthService() : super("AuthService");

  /// Logs in the user with the provided [email] and [password].
  ///
  /// Throws an [Eexception] if login fails.
  Future<void> login(String email, String password);

  /// Logs out the currently authenticated user.
  ///
  /// Throws an [Eexception] if no user is authenticated.
  Future<void> logout();

  /// Registers a new user with the provided [email] and [password].
  Future<void> registerUser(String email, String password);

  /// Sets the currently authenticated user's password to the provided [password].
  ///
  /// Throws an [Eexception] if no user is authenticated.
  Future<void> setPassword(String password);

  /// Returns true if a user is currently authenticated.
  bool isUserLoggedIn();

  /// Returns the id of the currently authenticated user or `null` if no user is authenticated.
  String? getCurrentUserId();
}
