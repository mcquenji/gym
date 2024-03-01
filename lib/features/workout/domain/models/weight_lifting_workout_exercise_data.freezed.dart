// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_lifting_workout_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeightLiftingWorkoutExerciseData _$WeightLiftingWorkoutExerciseDataFromJson(
    Map<String, dynamic> json) {
  return _WeightLiftingWorkoutExerciseData.fromJson(json);
}

/// @nodoc
mixin _$WeightLiftingWorkoutExerciseData {
  /// The number of sets
  int get sets => throw _privateConstructorUsedError;

  /// The maximum number of reps per set
  int get maxReps => throw _privateConstructorUsedError;

  /// The minimum number of reps per set
  int get minReps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightLiftingWorkoutExerciseDataCopyWith<WeightLiftingWorkoutExerciseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightLiftingWorkoutExerciseDataCopyWith<$Res> {
  factory $WeightLiftingWorkoutExerciseDataCopyWith(
          WeightLiftingWorkoutExerciseData value,
          $Res Function(WeightLiftingWorkoutExerciseData) then) =
      _$WeightLiftingWorkoutExerciseDataCopyWithImpl<$Res,
          WeightLiftingWorkoutExerciseData>;
  @useResult
  $Res call({int sets, int maxReps, int minReps});
}

/// @nodoc
class _$WeightLiftingWorkoutExerciseDataCopyWithImpl<$Res,
        $Val extends WeightLiftingWorkoutExerciseData>
    implements $WeightLiftingWorkoutExerciseDataCopyWith<$Res> {
  _$WeightLiftingWorkoutExerciseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sets = null,
    Object? maxReps = null,
    Object? minReps = null,
  }) {
    return _then(_value.copyWith(
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      maxReps: null == maxReps
          ? _value.maxReps
          : maxReps // ignore: cast_nullable_to_non_nullable
              as int,
      minReps: null == minReps
          ? _value.minReps
          : minReps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightLiftingWorkoutExerciseDataImplCopyWith<$Res>
    implements $WeightLiftingWorkoutExerciseDataCopyWith<$Res> {
  factory _$$WeightLiftingWorkoutExerciseDataImplCopyWith(
          _$WeightLiftingWorkoutExerciseDataImpl value,
          $Res Function(_$WeightLiftingWorkoutExerciseDataImpl) then) =
      __$$WeightLiftingWorkoutExerciseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sets, int maxReps, int minReps});
}

/// @nodoc
class __$$WeightLiftingWorkoutExerciseDataImplCopyWithImpl<$Res>
    extends _$WeightLiftingWorkoutExerciseDataCopyWithImpl<$Res,
        _$WeightLiftingWorkoutExerciseDataImpl>
    implements _$$WeightLiftingWorkoutExerciseDataImplCopyWith<$Res> {
  __$$WeightLiftingWorkoutExerciseDataImplCopyWithImpl(
      _$WeightLiftingWorkoutExerciseDataImpl _value,
      $Res Function(_$WeightLiftingWorkoutExerciseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sets = null,
    Object? maxReps = null,
    Object? minReps = null,
  }) {
    return _then(_$WeightLiftingWorkoutExerciseDataImpl(
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      maxReps: null == maxReps
          ? _value.maxReps
          : maxReps // ignore: cast_nullable_to_non_nullable
              as int,
      minReps: null == minReps
          ? _value.minReps
          : minReps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightLiftingWorkoutExerciseDataImpl
    implements _WeightLiftingWorkoutExerciseData {
  _$WeightLiftingWorkoutExerciseDataImpl(
      {required this.sets, required this.maxReps, required this.minReps});

  factory _$WeightLiftingWorkoutExerciseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WeightLiftingWorkoutExerciseDataImplFromJson(json);

  /// The number of sets
  @override
  final int sets;

  /// The maximum number of reps per set
  @override
  final int maxReps;

  /// The minimum number of reps per set
  @override
  final int minReps;

  @override
  String toString() {
    return 'WeightLiftingWorkoutExerciseData(sets: $sets, maxReps: $maxReps, minReps: $minReps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightLiftingWorkoutExerciseDataImpl &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.maxReps, maxReps) || other.maxReps == maxReps) &&
            (identical(other.minReps, minReps) || other.minReps == minReps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sets, maxReps, minReps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightLiftingWorkoutExerciseDataImplCopyWith<
          _$WeightLiftingWorkoutExerciseDataImpl>
      get copyWith => __$$WeightLiftingWorkoutExerciseDataImplCopyWithImpl<
          _$WeightLiftingWorkoutExerciseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightLiftingWorkoutExerciseDataImplToJson(
      this,
    );
  }
}

abstract class _WeightLiftingWorkoutExerciseData
    implements WeightLiftingWorkoutExerciseData {
  factory _WeightLiftingWorkoutExerciseData(
      {required final int sets,
      required final int maxReps,
      required final int minReps}) = _$WeightLiftingWorkoutExerciseDataImpl;

  factory _WeightLiftingWorkoutExerciseData.fromJson(
          Map<String, dynamic> json) =
      _$WeightLiftingWorkoutExerciseDataImpl.fromJson;

  @override

  /// The number of sets
  int get sets;
  @override

  /// The maximum number of reps per set
  int get maxReps;
  @override

  /// The minimum number of reps per set
  int get minReps;
  @override
  @JsonKey(ignore: true)
  _$$WeightLiftingWorkoutExerciseDataImplCopyWith<
          _$WeightLiftingWorkoutExerciseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
