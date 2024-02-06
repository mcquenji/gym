import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

class UserProvider extends StateNotifier<UserProviderState> {
  final AuthService authService;
  final UsersProviderState users;
  final UsersDataSource usersDataSource;

  UserProvider(this.authService, this.users, this.usersDataSource)
      : super(null) {
    if (authService.isUserLoggedIn()) {
      state = users[authService.getCurrentUserId()];
    }
  }

  void logout() {
    authService.logout();
    state = null;
  }

  /// Logs in the user with the given [email] and [password].
  ///
  /// If the login is sucessful, the state will be updated with the user's information and `true` will be returned.
  /// Otherwise `false` will be returned.
  Future<bool> login(String email, String password) async {
    try {
      await authService.login(email, password);

      if (mounted) state = users[authService.getCurrentUserId()];

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Completes the current user's registration.
  Future<void> completeRegistration(String password) async {
    if (state == null) {
      throw Exception('User is not logged in');
    }

    await authService.setPassword(password);
    await usersDataSource.setRegistered(state!.id, true);
  }
}

typedef UserProviderState = User?;
