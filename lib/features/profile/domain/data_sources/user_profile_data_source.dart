import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';

/// A data source for retrieving and manipulating user profile data.
abstract class UserProfileDataSource extends DataSource {
  UserProfileDataSource() : super('UserProfile');

  /// Retrieves the user's profile.
  ///
  /// May return `null` if the user has not set up a profile yet.
  Future<UserProfile?> getUserProfile(String userId);

  /// Updates the user's profile.
  Future<void> write(UserProfile userProfile);
}
