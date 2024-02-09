// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Referral _$ReferralFromJson(Map<String, dynamic> json) {
  return _Referral.fromJson(json);
}

/// @nodoc
mixin _$Referral {
  /// The referral code.
  String get code => throw _privateConstructorUsedError;

  /// The user id of the person who referred the new user.
  String get userId => throw _privateConstructorUsedError;

  /// The id of the account that was created using the referral code.
  ///
  /// This is `null` if the account has not been created yet.
  String? get referredUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralCopyWith<Referral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCopyWith<$Res> {
  factory $ReferralCopyWith(Referral value, $Res Function(Referral) then) =
      _$ReferralCopyWithImpl<$Res, Referral>;
  @useResult
  $Res call({String code, String userId, String? referredUserId});
}

/// @nodoc
class _$ReferralCopyWithImpl<$Res, $Val extends Referral>
    implements $ReferralCopyWith<$Res> {
  _$ReferralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? userId = null,
    Object? referredUserId = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralImplCopyWith<$Res>
    implements $ReferralCopyWith<$Res> {
  factory _$$ReferralImplCopyWith(
          _$ReferralImpl value, $Res Function(_$ReferralImpl) then) =
      __$$ReferralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String userId, String? referredUserId});
}

/// @nodoc
class __$$ReferralImplCopyWithImpl<$Res>
    extends _$ReferralCopyWithImpl<$Res, _$ReferralImpl>
    implements _$$ReferralImplCopyWith<$Res> {
  __$$ReferralImplCopyWithImpl(
      _$ReferralImpl _value, $Res Function(_$ReferralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? userId = null,
    Object? referredUserId = freezed,
  }) {
    return _then(_$ReferralImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: freezed == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralImpl implements _Referral {
  _$ReferralImpl(
      {required this.code, required this.userId, required this.referredUserId});

  factory _$ReferralImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralImplFromJson(json);

  /// The referral code.
  @override
  final String code;

  /// The user id of the person who referred the new user.
  @override
  final String userId;

  /// The id of the account that was created using the referral code.
  ///
  /// This is `null` if the account has not been created yet.
  @override
  final String? referredUserId;

  @override
  String toString() {
    return 'Referral(code: $code, userId: $userId, referredUserId: $referredUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, userId, referredUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralImplCopyWith<_$ReferralImpl> get copyWith =>
      __$$ReferralImplCopyWithImpl<_$ReferralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralImplToJson(
      this,
    );
  }
}

abstract class _Referral implements Referral {
  factory _Referral(
      {required final String code,
      required final String userId,
      required final String? referredUserId}) = _$ReferralImpl;

  factory _Referral.fromJson(Map<String, dynamic> json) =
      _$ReferralImpl.fromJson;

  @override

  /// The referral code.
  String get code;
  @override

  /// The user id of the person who referred the new user.
  String get userId;
  @override

  /// The id of the account that was created using the referral code.
  ///
  /// This is `null` if the account has not been created yet.
  String? get referredUserId;
  @override
  @JsonKey(ignore: true)
  _$$ReferralImplCopyWith<_$ReferralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
