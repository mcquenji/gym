import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/domain/domain.dart';
import 'package:riverpod/riverpod.dart';

final usersProvider =
    StateNotifierProvider<UsersProvider, UsersProviderState>((ref) {
  ref.watch(collectionProvider("users")); // watch the collection for changes
  var usersDataSource = ref.watch(usersDataSourceProvider);

  return UsersProvider(usersDataSource);
});
