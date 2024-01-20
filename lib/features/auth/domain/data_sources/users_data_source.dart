import 'package:gym/features/auth/auth.dart';

abstract class UsersDataSource {
  Future<List<User>> query(
      {String? id, String? email, String? name, bool? registered});

  Future<User?> get(String id);

  Future<String> createUserID();

  Future<void> write(User user);

  Future<void> delete(String id);

  Future<void> setRegistered(String id, bool registered);
}
