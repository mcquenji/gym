import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral.freezed.dart';
part 'referral.g.dart';

/// A referral for a person to join the app.
@freezed
class Referral with _$Referral {
  factory Referral({
    /// The referral code.
    required String code,

    /// The user id of the person who referred the new user.
    required String userId,

    /// The id of the account that was created using the referral code.
    ///
    /// This is `null` if the account has not been created yet.
    required String? referredUserId,
  }) = _Referral;

  factory Referral.fromJson(Map<String, dynamic> json) =>
      _$ReferralFromJson(json);
}
