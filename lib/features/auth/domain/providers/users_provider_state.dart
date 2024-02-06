import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

/// Provides a map of all registered users where the key is the user's id.
///
/// Note: Manipulating user information is not possible.
class UsersProvider extends Notifier<UsersProviderState> {
  late UsersDataSource usersDataSource;
  bool _isInitialized = false;

  @override
  UsersProviderState build() {
    if (!_isInitialized) {
      _isInitialized = true;
      state = {};
    }

    usersDataSource = ref.watch(usersDataSourceProvider);
    ref.watch(collectionProvider("users")); // watch the collection for changes

    fetchUsers();

    return state;
  }

  Future<void> fetchUsers() async {
    var users = await usersDataSource.query();

    state = _mapState(users);
  }

  UsersProviderState _mapState(List<User> users) {
    return {for (var user in users) user.id: user};
  }
}

typedef UsersProviderState = Map<String, User>;
