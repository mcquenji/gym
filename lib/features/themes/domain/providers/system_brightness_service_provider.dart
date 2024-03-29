import 'package:flutter/foundation.dart';
import 'package:gym/features/themes/data/data.dart';
import 'package:gym/features/themes/domain/domain.dart';
import 'package:riverpod/riverpod.dart';

final systemBrightnessServiceProvider = Provider<SystemBrightnessService>(
  (ref) {
    if (kDebugMode) {
      return DebugSystemBrightnessService();
    }

    return StdSystemBrightnessService();
  },
);
