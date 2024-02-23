// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  /// The id of the profile. This is the same as the user id.
  String get id => throw _privateConstructorUsedError;

  /// The date of birth of the user in milliseconds since epoch.
  ///
  /// Use [dateOfBirth] isntead.
  int get dateOfBirthTimestamp => throw _privateConstructorUsedError;

  /// The weight of the user in kilograms.
  double get weight => throw _privateConstructorUsedError;

  /// The height of the user in centimeters.
  int get height => throw _privateConstructorUsedError;

  /// The percentage of body fat of the user, between 0 and 1.
  ///
  /// This may be null if the user has not provided this information.
  double? get bodyFatPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      int dateOfBirthTimestamp,
      double weight,
      int height,
      double? bodyFatPercentage});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfBirthTimestamp = null,
    Object? weight = null,
    Object? height = null,
    Object? bodyFatPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthTimestamp: null == dateOfBirthTimestamp
          ? _value.dateOfBirthTimestamp
          : dateOfBirthTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      bodyFatPercentage: freezed == bodyFatPercentage
          ? _value.bodyFatPercentage
          : bodyFatPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int dateOfBirthTimestamp,
      double weight,
      int height,
      double? bodyFatPercentage});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfBirthTimestamp = null,
    Object? weight = null,
    Object? height = null,
    Object? bodyFatPercentage = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthTimestamp: null == dateOfBirthTimestamp
          ? _value.dateOfBirthTimestamp
          : dateOfBirthTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      bodyFatPercentage: freezed == bodyFatPercentage
          ? _value.bodyFatPercentage
          : bodyFatPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl extends _UserProfile {
  _$UserProfileImpl(
      {required this.id,
      required this.dateOfBirthTimestamp,
      required this.weight,
      required this.height,
      this.bodyFatPercentage})
      : super._();

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  /// The id of the profile. This is the same as the user id.
  @override
  final String id;

  /// The date of birth of the user in milliseconds since epoch.
  ///
  /// Use [dateOfBirth] isntead.
  @override
  final int dateOfBirthTimestamp;

  /// The weight of the user in kilograms.
  @override
  final double weight;

  /// The height of the user in centimeters.
  @override
  final int height;

  /// The percentage of body fat of the user, between 0 and 1.
  ///
  /// This may be null if the user has not provided this information.
  @override
  final double? bodyFatPercentage;

  @override
  String toString() {
    return 'UserProfile(id: $id, dateOfBirthTimestamp: $dateOfBirthTimestamp, weight: $weight, height: $height, bodyFatPercentage: $bodyFatPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateOfBirthTimestamp, dateOfBirthTimestamp) ||
                other.dateOfBirthTimestamp == dateOfBirthTimestamp) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.bodyFatPercentage, bodyFatPercentage) ||
                other.bodyFatPercentage == bodyFatPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dateOfBirthTimestamp, weight, height, bodyFatPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile extends UserProfile {
  factory _UserProfile(
      {required final String id,
      required final int dateOfBirthTimestamp,
      required final double weight,
      required final int height,
      final double? bodyFatPercentage}) = _$UserProfileImpl;
  _UserProfile._() : super._();

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override

  /// The id of the profile. This is the same as the user id.
  String get id;
  @override

  /// The date of birth of the user in milliseconds since epoch.
  ///
  /// Use [dateOfBirth] isntead.
  int get dateOfBirthTimestamp;
  @override

  /// The weight of the user in kilograms.
  double get weight;
  @override

  /// The height of the user in centimeters.
  int get height;
  @override

  /// The percentage of body fat of the user, between 0 and 1.
  ///
  /// This may be null if the user has not provided this information.
  double? get bodyFatPercentage;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
