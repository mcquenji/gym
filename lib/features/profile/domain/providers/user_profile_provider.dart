import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userProfileProvider =
    NotifierProvider<UserProfileProvider, UserProfileProviderState>(
  () => UserProfileProvider(),
);

/// Provides the profile of the current user.
///
/// If the user is not logged in, or no profile has been set up yet, this provider will return `null`.
class UserProfileProvider extends Notifier<UserProfileProviderState> {
  late UserProfileDataSource userProfileDataSource;
  late User? user;

  @override
  UserProfileProviderState build() {
    user = ref.watch(userProvider);
    userProfileDataSource = ref.watch(userProfileDataSourceProvider);

    if (user == null) {
      return null;
    }

    // watch the users collection for changes
    ref.watch(
        collection(userProfileDataSource.getUserDataCollectionPath(user!.id)));

    return stateOrNull;
  }

  Future<void> createUserProfile({
    required DateTime dateOfBirth,
    required double weight,
    required int height,
    required double? bodyFat,
  }) async {
    if (user == null) {
      throw Exception("User is not logged in");
    }

    final userProfile = UserProfile(
      id: user!.id,
      dateOfBirthTimestamp: dateOfBirth.millisecondsSinceEpoch,
      weight: weight,
      height: height,
      bodyFatPercentage: bodyFat,
    );

    await userProfileDataSource.write(userProfile);

    state = userProfile;
  }
}

typedef UserProfileProviderState = UserProfile?;
