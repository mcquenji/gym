import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

/// Provides a map of all registered users where the key is the user's id.
///
/// Note: Manipulating user's information is not possible.
class UsersProvider extends StateNotifier<UsersProviderState> {
  UsersDataSource usersDataSource;

  UsersProvider(this.usersDataSource) : super({}) {
    fetchUsers();
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
