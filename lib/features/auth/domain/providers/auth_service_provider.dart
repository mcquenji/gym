import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/auth/data/data.dart';
import 'package:riverpod/riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  if (kDebugMode) {
    FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
  }

  return FirebaseAuthService();
});
