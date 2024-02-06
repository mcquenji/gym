import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

final usersProvider = NotifierProvider<UsersProvider, UsersProviderState>(
  () => UsersProvider(),
);
