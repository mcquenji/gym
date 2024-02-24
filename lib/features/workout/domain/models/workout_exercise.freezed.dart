// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutExercise _$WorkoutExerciseFromJson(Map<String, dynamic> json) {
  return _WorkoutExercise.fromJson(json);
}

/// @nodoc
mixin _$WorkoutExercise {
  /// The id of the underlying exercise
  String get id => throw _privateConstructorUsedError;

  /// The number of sets
  int get sets => throw _privateConstructorUsedError;

  /// The maximum number of reps per set
  int get maxReps => throw _privateConstructorUsedError;

  /// The minimum number of reps per set
  int get minReps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutExerciseCopyWith<WorkoutExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutExerciseCopyWith<$Res> {
  factory $WorkoutExerciseCopyWith(
          WorkoutExercise value, $Res Function(WorkoutExercise) then) =
      _$WorkoutExerciseCopyWithImpl<$Res, WorkoutExercise>;
  @useResult
  $Res call({String id, int sets, int maxReps, int minReps});
}

/// @nodoc
class _$WorkoutExerciseCopyWithImpl<$Res, $Val extends WorkoutExercise>
    implements $WorkoutExerciseCopyWith<$Res> {
  _$WorkoutExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sets = null,
    Object? maxReps = null,
    Object? minReps = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$WorkoutExerciseImplCopyWith<$Res>
    implements $WorkoutExerciseCopyWith<$Res> {
  factory _$$WorkoutExerciseImplCopyWith(_$WorkoutExerciseImpl value,
          $Res Function(_$WorkoutExerciseImpl) then) =
      __$$WorkoutExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int sets, int maxReps, int minReps});
}

/// @nodoc
class __$$WorkoutExerciseImplCopyWithImpl<$Res>
    extends _$WorkoutExerciseCopyWithImpl<$Res, _$WorkoutExerciseImpl>
    implements _$$WorkoutExerciseImplCopyWith<$Res> {
  __$$WorkoutExerciseImplCopyWithImpl(
      _$WorkoutExerciseImpl _value, $Res Function(_$WorkoutExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sets = null,
    Object? maxReps = null,
    Object? minReps = null,
  }) {
    return _then(_$WorkoutExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$WorkoutExerciseImpl implements _WorkoutExercise {
  _$WorkoutExerciseImpl(
      {required this.id,
      required this.sets,
      required this.maxReps,
      required this.minReps});

  factory _$WorkoutExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutExerciseImplFromJson(json);

  /// The id of the underlying exercise
  @override
  final String id;

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
    return 'WorkoutExercise(id: $id, sets: $sets, maxReps: $maxReps, minReps: $minReps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.maxReps, maxReps) || other.maxReps == maxReps) &&
            (identical(other.minReps, minReps) || other.minReps == minReps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sets, maxReps, minReps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutExerciseImplCopyWith<_$WorkoutExerciseImpl> get copyWith =>
      __$$WorkoutExerciseImplCopyWithImpl<_$WorkoutExerciseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutExerciseImplToJson(
      this,
    );
  }
}

abstract class _WorkoutExercise implements WorkoutExercise {
  factory _WorkoutExercise(
      {required final String id,
      required final int sets,
      required final int maxReps,
      required final int minReps}) = _$WorkoutExerciseImpl;

  factory _WorkoutExercise.fromJson(Map<String, dynamic> json) =
      _$WorkoutExerciseImpl.fromJson;

  @override

  /// The id of the underlying exercise
  String get id;
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
  _$$WorkoutExerciseImplCopyWith<_$WorkoutExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
