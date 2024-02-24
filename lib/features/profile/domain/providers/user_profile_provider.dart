import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userProfileProvider =
    NotifierProvider<UserProfileController, UserProfileProviderState>(
  () => UserProfileController(),
);

/// Provides the profile of the current user.
///
/// If the user is not logged in, or no profile has been set up yet, this provider will return `null`.
class UserProfileController extends Notifier<UserProfileProviderState> {
  late UserProfileDataSource userProfileDataSource;
  late User? user;
  late AvatarController avatarController;
  late ProfileHistoryController profileHistoryController;

  @override
  UserProfileProviderState build() {
    user = ref.watch(userProvider);
    userProfileDataSource = ref.watch(userProfileDataSourceProvider);
    avatarController = ref.watch(avatarProvider.notifier);
    profileHistoryController = ref.watch(profileHistoryProvider.notifier);

    if (user == null) {
      return null;
    }

    _fetchUserProfile();

    return stateOrNull;
  }

  Future _fetchUserProfile() async {
    var userProfile = await userProfileDataSource.getUserProfile(user!.id);

    state = userProfile;
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
    await profileHistoryController.record(userProfile);

    await avatarController.createNewAvatar();

    state = userProfile;
  }

  Future<void> setDateOfBirth(DateTime dateOfBirth) async {
    if (user == null) {
      throw Exception("User is not logged in");
    }

    final profile = state!
        .copyWith(dateOfBirthTimestamp: dateOfBirth.millisecondsSinceEpoch);

    await userProfileDataSource.write(profile);
    if (profile != state) await profileHistoryController.record(profile);

    state = profile;
  }

  Future<void> setWeight(double weight) async {
    if (user == null) {
      throw Exception("User is not logged in");
    }

    final profile = state!.copyWith(weight: weight);

    await userProfileDataSource.write(profile);
    if (profile != state) await profileHistoryController.record(profile);

    state = profile;
  }

  Future<void> setHeight(int height) async {
    if (user == null) {
      throw Exception("User is not logged in");
    }

    final profile = state!.copyWith(height: height);

    await userProfileDataSource.write(profile);

    if (profile != state) await profileHistoryController.record(profile);

    state = profile;
  }

  Future<void> setBodyFat(double? bodyFat) async {
    if (user == null) {
      throw Exception("User is not logged in");
    }

    final profile = state!.copyWith(bodyFatPercentage: bodyFat);

    await userProfileDataSource.write(profile);
    if (profile != state) await profileHistoryController.record(profile);

    state = profile;
  }
}

typedef UserProfileProviderState = UserProfile?;
