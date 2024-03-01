// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stretching_workout_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StretchingWorkoutExerciseData _$StretchingWorkoutExerciseDataFromJson(
    Map<String, dynamic> json) {
  return _StretchingWorkoutExerciseData.fromJson(json);
}

/// @nodoc
mixin _$StretchingWorkoutExerciseData {
  /// The min duration of the stretching exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  int get minSeconds => throw _privateConstructorUsedError;

  /// The max duration of the stretching exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  int get maxSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StretchingWorkoutExerciseDataCopyWith<StretchingWorkoutExerciseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StretchingWorkoutExerciseDataCopyWith<$Res> {
  factory $StretchingWorkoutExerciseDataCopyWith(
          StretchingWorkoutExerciseData value,
          $Res Function(StretchingWorkoutExerciseData) then) =
      _$StretchingWorkoutExerciseDataCopyWithImpl<$Res,
          StretchingWorkoutExerciseData>;
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class _$StretchingWorkoutExerciseDataCopyWithImpl<$Res,
        $Val extends StretchingWorkoutExerciseData>
    implements $StretchingWorkoutExerciseDataCopyWith<$Res> {
  _$StretchingWorkoutExerciseDataCopyWithImpl(this._value, this._then);

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
abstract class _$$StretchingWorkoutExerciseDataImplCopyWith<$Res>
    implements $StretchingWorkoutExerciseDataCopyWith<$Res> {
  factory _$$StretchingWorkoutExerciseDataImplCopyWith(
          _$StretchingWorkoutExerciseDataImpl value,
          $Res Function(_$StretchingWorkoutExerciseDataImpl) then) =
      __$$StretchingWorkoutExerciseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minSeconds, int maxSeconds});
}

/// @nodoc
class __$$StretchingWorkoutExerciseDataImplCopyWithImpl<$Res>
    extends _$StretchingWorkoutExerciseDataCopyWithImpl<$Res,
        _$StretchingWorkoutExerciseDataImpl>
    implements _$$StretchingWorkoutExerciseDataImplCopyWith<$Res> {
  __$$StretchingWorkoutExerciseDataImplCopyWithImpl(
      _$StretchingWorkoutExerciseDataImpl _value,
      $Res Function(_$StretchingWorkoutExerciseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minSeconds = null,
    Object? maxSeconds = null,
  }) {
    return _then(_$StretchingWorkoutExerciseDataImpl(
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
class _$StretchingWorkoutExerciseDataImpl
    extends _StretchingWorkoutExerciseData {
  _$StretchingWorkoutExerciseDataImpl(
      {required this.minSeconds, required this.maxSeconds})
      : super._();

  factory _$StretchingWorkoutExerciseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StretchingWorkoutExerciseDataImplFromJson(json);

  /// The min duration of the stretching exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  @override
  final int minSeconds;

  /// The max duration of the stretching exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  @override
  final int maxSeconds;

  @override
  String toString() {
    return 'StretchingWorkoutExerciseData(minSeconds: $minSeconds, maxSeconds: $maxSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StretchingWorkoutExerciseDataImpl &&
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
  _$$StretchingWorkoutExerciseDataImplCopyWith<
          _$StretchingWorkoutExerciseDataImpl>
      get copyWith => __$$StretchingWorkoutExerciseDataImplCopyWithImpl<
          _$StretchingWorkoutExerciseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StretchingWorkoutExerciseDataImplToJson(
      this,
    );
  }
}

abstract class _StretchingWorkoutExerciseData
    extends StretchingWorkoutExerciseData {
  factory _StretchingWorkoutExerciseData(
      {required final int minSeconds,
      required final int maxSeconds}) = _$StretchingWorkoutExerciseDataImpl;
  _StretchingWorkoutExerciseData._() : super._();

  factory _StretchingWorkoutExerciseData.fromJson(Map<String, dynamic> json) =
      _$StretchingWorkoutExerciseDataImpl.fromJson;

  @override

  /// The min duration of the stretching exercise in seconds.
  ///
  /// Use [minDuration] to get this value as a [Duration].
  int get minSeconds;
  @override

  /// The max duration of the stretching exercise in seconds.
  ///
  /// Use [maxDuration] to get this value as a [Duration].
  int get maxSeconds;
  @override
  @JsonKey(ignore: true)
  _$$StretchingWorkoutExerciseDataImplCopyWith<
          _$StretchingWorkoutExerciseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
