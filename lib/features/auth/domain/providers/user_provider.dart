import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

final userProvider = NotifierProvider<UserController, UserProviderState>(
  () => UserController(),
);
