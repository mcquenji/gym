import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/auth/impl/impl.dart';
import 'package:riverpod/riverpod.dart';

final usersDataSourceProvider = Provider<UsersDataSource>((ref) {
  return FirestoreUsersDataSource();
});
