import 'dart:async';
import 'package:gym/features/profile/profile.dart';
import 'package:riverpod/riverpod.dart';

final profileHistoryProvider =
    AsyncNotifierProvider<ProfileHistoryController, Map<DateTime, UserProfile>>(
  () => ProfileHistoryController(),
);

class ProfileHistoryController
    extends AsyncNotifier<Map<DateTime, UserProfile>> {
  late ProfileHistoryDataSource profileHistoryDataSource;

  @override
  FutureOr<Map<DateTime, UserProfile>> build() async {
    profileHistoryDataSource = ref.watch(profileHistoryDataSourceProvider);

    return await profileHistoryDataSource.getHistory();
  }

  Future<void> record(UserProfile profile) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await profileHistoryDataSource.record(profile);

      return await profileHistoryDataSource.getHistory();
    });
  }
}
