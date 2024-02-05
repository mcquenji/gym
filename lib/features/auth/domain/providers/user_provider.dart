import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

final userProvider = StateNotifierProvider<UserProvider, UserProviderState>(
  (ref) {
    var authService = ref.watch(authServiceProvider);
    var users = ref.watch(usersProvider);
    var usersDataSource = ref.watch(usersDataSourceProvider);

    return UserProvider(authService, users, usersDataSource);
  },
);
