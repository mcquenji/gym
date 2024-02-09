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
  /// This will also log the user in with the newly created account.
  Future<void> registerUser({
    required String email,
    required String password,
    String? referralCode,
    required String name,
  }) async {
    String id = "";

    if (referralCode == null) {
      if (state.isEmpty) {
        id = await authService.registerFirstUser(email, password);
      } else {
        throw Exception("A referral code is required to register a new user");
      }
    } else {
      id = await authService.registerUser(referralCode, email, password);
    }

    var user = User(
      id: id,
      email: email,
      name: name,
      onboarded: false,
    );

    await usersDataSource.write(user);

    await ref.read(userProvider.notifier).login(email, password);
  }
}

typedef UsersProviderState = Map<String, User>;
