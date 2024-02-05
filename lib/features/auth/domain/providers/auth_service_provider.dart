import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/auth/data/data.dart';
import 'package:riverpod/riverpod.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => FirebaseAuthService(),
);
