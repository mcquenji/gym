// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_lifting_workout_exercise_requirements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeightLiftingWorkoutExerciseRequirements
    _$WeightLiftingWorkoutExerciseRequirementsFromJson(
        Map<String, dynamic> json) {
  return _WeightLiftingWorkoutExerciseRequirements.fromJson(json);
}

/// @nodoc
mixin _$WeightLiftingWorkoutExerciseRequirements {
  /// The number of sets
  int get sets => throw _privateConstructorUsedError;

  /// The maximum number of reps per set
  int get maxReps => throw _privateConstructorUsedError;

  /// The minimum number of reps per set
  int get minReps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightLiftingWorkoutExerciseRequirementsCopyWith<
          WeightLiftingWorkoutExerciseRequirements>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightLiftingWorkoutExerciseRequirementsCopyWith<$Res> {
  factory $WeightLiftingWorkoutExerciseRequirementsCopyWith(
          WeightLiftingWorkoutExerciseRequirements value,
          $Res Function(WeightLiftingWorkoutExerciseRequirements) then) =
      _$WeightLiftingWorkoutExerciseRequirementsCopyWithImpl<$Res,
          WeightLiftingWorkoutExerciseRequirements>;
  @useResult
  $Res call({int sets, int maxReps, int minReps});
}

/// @nodoc
class _$WeightLiftingWorkoutExerciseRequirementsCopyWithImpl<$Res,
        $Val extends WeightLiftingWorkoutExerciseRequirements>
    implements $WeightLiftingWorkoutExerciseRequirementsCopyWith<$Res> {
  _$WeightLiftingWorkoutExerciseRequirementsCopyWithImpl(
      this._value, this._then);

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
abstract class _$$WeightLiftingWorkoutExerciseRequirementsImplCopyWith<$Res>
    implements $WeightLiftingWorkoutExerciseRequirementsCopyWith<$Res> {
  factory _$$WeightLiftingWorkoutExerciseRequirementsImplCopyWith(
          _$WeightLiftingWorkoutExerciseRequirementsImpl value,
          $Res Function(_$WeightLiftingWorkoutExerciseRequirementsImpl) then) =
      __$$WeightLiftingWorkoutExerciseRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sets, int maxReps, int minReps});
}

/// @nodoc
class __$$WeightLiftingWorkoutExerciseRequirementsImplCopyWithImpl<$Res>
    extends _$WeightLiftingWorkoutExerciseRequirementsCopyWithImpl<$Res,
        _$WeightLiftingWorkoutExerciseRequirementsImpl>
    implements _$$WeightLiftingWorkoutExerciseRequirementsImplCopyWith<$Res> {
  __$$WeightLiftingWorkoutExerciseRequirementsImplCopyWithImpl(
      _$WeightLiftingWorkoutExerciseRequirementsImpl _value,
      $Res Function(_$WeightLiftingWorkoutExerciseRequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sets = null,
    Object? maxReps = null,
    Object? minReps = null,
  }) {
    return _then(_$WeightLiftingWorkoutExerciseRequirementsImpl(
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
class _$WeightLiftingWorkoutExerciseRequirementsImpl
    implements _WeightLiftingWorkoutExerciseRequirements {
  _$WeightLiftingWorkoutExerciseRequirementsImpl(
      {required this.sets, required this.maxReps, required this.minReps});

  factory _$WeightLiftingWorkoutExerciseRequirementsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WeightLiftingWorkoutExerciseRequirementsImplFromJson(json);

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
    return 'WeightLiftingWorkoutExerciseRequirements(sets: $sets, maxReps: $maxReps, minReps: $minReps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightLiftingWorkoutExerciseRequirementsImpl &&
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
  _$$WeightLiftingWorkoutExerciseRequirementsImplCopyWith<
          _$WeightLiftingWorkoutExerciseRequirementsImpl>
      get copyWith =>
          __$$WeightLiftingWorkoutExerciseRequirementsImplCopyWithImpl<
              _$WeightLiftingWorkoutExerciseRequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightLiftingWorkoutExerciseRequirementsImplToJson(
      this,
    );
  }
}

abstract class _WeightLiftingWorkoutExerciseRequirements
    implements WeightLiftingWorkoutExerciseRequirements {
  factory _WeightLiftingWorkoutExerciseRequirements(
          {required final int sets,
          required final int maxReps,
          required final int minReps}) =
      _$WeightLiftingWorkoutExerciseRequirementsImpl;

  factory _WeightLiftingWorkoutExerciseRequirements.fromJson(
          Map<String, dynamic> json) =
      _$WeightLiftingWorkoutExerciseRequirementsImpl.fromJson;

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
  _$$WeightLiftingWorkoutExerciseRequirementsImplCopyWith<
          _$WeightLiftingWorkoutExerciseRequirementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
