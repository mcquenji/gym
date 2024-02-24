import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/impl/impl.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:riverpod/riverpod.dart';

final profileHistoryDataSourceProvider =
    Provider<ProfileHistoryDataSource>((ref) {
  return StdProfileHistoryDataSource(
    ref.watch(authServiceProvider),
    "users",
    "data",
    "history",
  );
});
