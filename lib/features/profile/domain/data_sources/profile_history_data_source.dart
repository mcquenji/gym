import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';

abstract class ProfileHistoryDataSource extends DataSource {
  const ProfileHistoryDataSource() : super("ProfileHistory");

  Future<Map<DateTime, UserProfile>> getHistory();

  Future<void> record(UserProfile profile);
}
