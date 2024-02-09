import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

/// Provides a map of all registered users where the key is the user's id.
///
/// Note: Manipulating user information is not possible.
class UsersProvider extends Notifier<UsersProviderState> {
  late UsersDataSource usersDataSource;
  late AuthService authService;

  @override
  UsersProviderState build() {
    usersDataSource = ref.watch(usersDataSourceProvider);
    authService = ref.watch(authServiceProvider);
    ref.watch(collectionProvider("users")); // watch the collection for changes

    fetchUsers();

    return stateOrNull ?? {};
  }

  Future<void> fetchUsers() async {
    var users = await usersDataSource.query();

    state = _mapState(users);
  }

  UsersProviderState _mapState(List<User> users) {
    return {for (var user in users) user.id: user};
  }

  /// Registers a new user with the given [email], [password], [referralCode] and [name].
  ///
  /// Note: The user will not be logged in after registration.
  Future<void> registerUser({
    required String email,
    required String password,
    required String referralCode,
    required String name,
  }) async {
    var id = await authService.registerUser(referralCode, email, password);

    var user = User(
      id: id,
      email: email,
      name: name,
      onboarded: false,
    );

    await usersDataSource.write(user);
  }
}

typedef UsersProviderState = Map<String, User>;
