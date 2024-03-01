// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardio_workout_exercise_requirements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardioWorkoutExerciseRequirements _$CardioWorkoutExerciseRequirementsFromJson(
    Map<String, dynamic> json) {
  return _CardioWorkoutExerciseRequirements.fromJson(json);
}

/// @nodoc
mixin _$CardioWorkoutExerciseRequirements {
  /// The min duration of the cardio exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  int get minSeconds => throw _privateConstructorUsedError;

  /// The max duration of the cardio exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  int get maxSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardioWorkoutExerciseRequirementsCopyWith<CardioWorkoutExerciseRequirements>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardioWorkoutExerciseRequirementsCopyWith<$Res> {
  factory $CardioWorkoutExerciseRequirementsCopyWith(
          CardioWorkoutExerciseRequirements value,
          $Res Function(CardioWorkoutExerciseRequirements) then) =
      _$CardioWorkoutExerciseRequirementsCopyWithImpl<$Res,
          CardioWorkoutExerciseRequirements>;
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class _$CardioWorkoutExerciseRequirementsCopyWithImpl<$Res,
        $Val extends CardioWorkoutExerciseRequirements>
    implements $CardioWorkoutExerciseRequirementsCopyWith<$Res> {
  _$CardioWorkoutExerciseRequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minSeconds = null,
    Object? maxSeconds = null,
  }) {
    return _then(_value.copyWith(
      minSeconds: null == minSeconds
          ? _value.minSeconds
          : minSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      maxSeconds: null == maxSeconds
          ? _value.maxSeconds
          : maxSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardioWorkoutExerciseRequirementsImplCopyWith<$Res>
    implements $CardioWorkoutExerciseRequirementsCopyWith<$Res> {
  factory _$$CardioWorkoutExerciseRequirementsImplCopyWith(
          _$CardioWorkoutExerciseRequirementsImpl value,
          $Res Function(_$CardioWorkoutExerciseRequirementsImpl) then) =
      __$$CardioWorkoutExerciseRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class __$$CardioWorkoutExerciseRequirementsImplCopyWithImpl<$Res>
    extends _$CardioWorkoutExerciseRequirementsCopyWithImpl<$Res,
        _$CardioWorkoutExerciseRequirementsImpl>
    implements _$$CardioWorkoutExerciseRequirementsImplCopyWith<$Res> {
  __$$CardioWorkoutExerciseRequirementsImplCopyWithImpl(
      _$CardioWorkoutExerciseRequirementsImpl _value,
      $Res Function(_$CardioWorkoutExerciseRequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minSeconds = null,
    Object? maxSeconds = null,
  }) {
    return _then(_$CardioWorkoutExerciseRequirementsImpl(
      minSeconds: null == minSeconds
          ? _value.minSeconds
          : minSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      maxSeconds: null == maxSeconds
          ? _value.maxSeconds
          : maxSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardioWorkoutExerciseRequirementsImpl
    extends _CardioWorkoutExerciseRequirements {
  _$CardioWorkoutExerciseRequirementsImpl(
      {required this.minSeconds, required this.maxSeconds})
      : super._();

  factory _$CardioWorkoutExerciseRequirementsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardioWorkoutExerciseRequirementsImplFromJson(json);

  /// The min duration of the cardio exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  @override
  final int minSeconds;

  /// The max duration of the cardio exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  @override
  final int maxSeconds;

  @override
  String toString() {
    return 'CardioWorkoutExerciseRequirements(minSeconds: $minSeconds, maxSeconds: $maxSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioWorkoutExerciseRequirementsImpl &&
            (identical(other.minSeconds, minSeconds) ||
                other.minSeconds == minSeconds) &&
            (identical(other.maxSeconds, maxSeconds) ||
                other.maxSeconds == maxSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minSeconds, maxSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardioWorkoutExerciseRequirementsImplCopyWith<
          _$CardioWorkoutExerciseRequirementsImpl>
      get copyWith => __$$CardioWorkoutExerciseRequirementsImplCopyWithImpl<
          _$CardioWorkoutExerciseRequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioWorkoutExerciseRequirementsImplToJson(
      this,
    );
  }
}

abstract class _CardioWorkoutExerciseRequirements
    extends CardioWorkoutExerciseRequirements {
  factory _CardioWorkoutExerciseRequirements(
      {required final int minSeconds,
      required final int maxSeconds}) = _$CardioWorkoutExerciseRequirementsImpl;
  _CardioWorkoutExerciseRequirements._() : super._();

  factory _CardioWorkoutExerciseRequirements.fromJson(
          Map<String, dynamic> json) =
      _$CardioWorkoutExerciseRequirementsImpl.fromJson;

  @override

  /// The min duration of the cardio exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  int get minSeconds;
  @override

  /// The max duration of the cardio exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  int get maxSeconds;
  @override
  @JsonKey(ignore: true)
  _$$CardioWorkoutExerciseRequirementsImplCopyWith<
          _$CardioWorkoutExerciseRequirementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
