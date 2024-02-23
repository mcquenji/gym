import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  factory UserProfile({
    /// The id of the profile. This is the same as the user id.
    required String id,

    /// The date of birth of the user in milliseconds since epoch.
    ///
    /// Use [dateOfBirth] isntead.
    required int dateOfBirthTimestamp,

    /// The weight of the user in kilograms.
    required double weight,

    /// The height of the user in centimeters.
    required int height,

    /// The percentage of body fat of the user, between 0 and 1.
    ///
    /// This may be null if the user has not provided this information.
    double? bodyFatPercentage,
  }) = _UserProfile;

  /// The date of birth of the user.
  DateTime get dateOfBirth =>
      DateTime.fromMillisecondsSinceEpoch(dateOfBirthTimestamp);

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
