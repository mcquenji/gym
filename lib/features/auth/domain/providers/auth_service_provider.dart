import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/auth/impl/impl.dart';
import 'package:riverpod/riverpod.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => FirebaseAuthService("referrals"),
);
