// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardio_workout_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardioWorkoutExerciseData _$CardioWorkoutExerciseDataFromJson(
    Map<String, dynamic> json) {
  return _CardioWorkoutExerciseData.fromJson(json);
}

/// @nodoc
mixin _$CardioWorkoutExerciseData {
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
  $CardioWorkoutExerciseDataCopyWith<CardioWorkoutExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardioWorkoutExerciseDataCopyWith<$Res> {
  factory $CardioWorkoutExerciseDataCopyWith(CardioWorkoutExerciseData value,
          $Res Function(CardioWorkoutExerciseData) then) =
      _$CardioWorkoutExerciseDataCopyWithImpl<$Res, CardioWorkoutExerciseData>;
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class _$CardioWorkoutExerciseDataCopyWithImpl<$Res,
        $Val extends CardioWorkoutExerciseData>
    implements $CardioWorkoutExerciseDataCopyWith<$Res> {
  _$CardioWorkoutExerciseDataCopyWithImpl(this._value, this._then);

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
abstract class _$$CardioWorkoutExerciseDataImplCopyWith<$Res>
    implements $CardioWorkoutExerciseDataCopyWith<$Res> {
  factory _$$CardioWorkoutExerciseDataImplCopyWith(
          _$CardioWorkoutExerciseDataImpl value,
          $Res Function(_$CardioWorkoutExerciseDataImpl) then) =
      __$$CardioWorkoutExerciseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class __$$CardioWorkoutExerciseDataImplCopyWithImpl<$Res>
    extends _$CardioWorkoutExerciseDataCopyWithImpl<$Res,
        _$CardioWorkoutExerciseDataImpl>
    implements _$$CardioWorkoutExerciseDataImplCopyWith<$Res> {
  __$$CardioWorkoutExerciseDataImplCopyWithImpl(
      _$CardioWorkoutExerciseDataImpl _value,
      $Res Function(_$CardioWorkoutExerciseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minSeconds = null,
    Object? maxSeconds = null,
  }) {
    return _then(_$CardioWorkoutExerciseDataImpl(
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
class _$CardioWorkoutExerciseDataImpl extends _CardioWorkoutExerciseData {
  _$CardioWorkoutExerciseDataImpl(
      {required this.minSeconds, required this.maxSeconds})
      : super._();

  factory _$CardioWorkoutExerciseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardioWorkoutExerciseDataImplFromJson(json);

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
    return 'CardioWorkoutExerciseData(minSeconds: $minSeconds, maxSeconds: $maxSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioWorkoutExerciseDataImpl &&
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
  _$$CardioWorkoutExerciseDataImplCopyWith<_$CardioWorkoutExerciseDataImpl>
      get copyWith => __$$CardioWorkoutExerciseDataImplCopyWithImpl<
          _$CardioWorkoutExerciseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioWorkoutExerciseDataImplToJson(
      this,
    );
  }
}

abstract class _CardioWorkoutExerciseData extends CardioWorkoutExerciseData {
  factory _CardioWorkoutExerciseData(
      {required final int minSeconds,
      required final int maxSeconds}) = _$CardioWorkoutExerciseDataImpl;
  _CardioWorkoutExerciseData._() : super._();

  factory _CardioWorkoutExerciseData.fromJson(Map<String, dynamic> json) =
      _$CardioWorkoutExerciseDataImpl.fromJson;

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
  _$$CardioWorkoutExerciseDataImplCopyWith<_$CardioWorkoutExerciseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
