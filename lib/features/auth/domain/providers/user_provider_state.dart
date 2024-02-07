import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

class UserProvider extends Notifier<UserProviderState> {
  late AuthService authService;
  late UsersProviderState users;
  late UsersDataSource usersDataSource;

  @override
  UserProviderState? build() {
    authService = ref.watch(authServiceProvider);
    users = ref.watch(usersProvider);
    usersDataSource = ref.watch(usersDataSourceProvider);

    if (authService.isUserLoggedIn()) {
      return users[authService.getCurrentUserId()];
    }

    return null;
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

      state = users[authService.getCurrentUserId()];

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

    if (password.isEmpty) {
      return;
    }

    await authService.setPassword(password);
    await usersDataSource.setRegistered(state!.id, true);
  }

  /// Sets the [User.onboarded] property to `true`.
  Future<void> completeOnboarding() async {
    if (state == null) {
      throw Exception('User is not logged in');
    }

    await usersDataSource.setOnboarded(state!.id, true);
  }
}

typedef UserProviderState = User?;
