// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_lifting_exercise_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeightLiftingExerciseEntry _$WeightLiftingExerciseEntryFromJson(
    Map<String, dynamic> json) {
  return _WorkoutSet.fromJson(json);
}

/// @nodoc
mixin _$WeightLiftingExerciseEntry {
  /// The id of the workout set
  String get id => throw _privateConstructorUsedError;

  /// The id of the workout the set is associated with
  String get workoutId => throw _privateConstructorUsedError;

  /// The id of the workout exercise the set is associated with
  String get exerciseId => throw _privateConstructorUsedError;

  /// The number of sets completed
  int get sets => throw _privateConstructorUsedError;

  /// The number of reps completed
  int get reps => throw _privateConstructorUsedError;

  /// The weight lifted
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightLiftingExerciseEntryCopyWith<WeightLiftingExerciseEntry>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightLiftingExerciseEntryCopyWith<$Res> {
  factory $WeightLiftingExerciseEntryCopyWith(WeightLiftingExerciseEntry value,
          $Res Function(WeightLiftingExerciseEntry) then) =
      _$WeightLiftingExerciseEntryCopyWithImpl<$Res,
          WeightLiftingExerciseEntry>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int sets,
      int reps,
      int weight});
}

/// @nodoc
class _$WeightLiftingExerciseEntryCopyWithImpl<$Res,
        $Val extends WeightLiftingExerciseEntry>
    implements $WeightLiftingExerciseEntryCopyWith<$Res> {
  _$WeightLiftingExerciseEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? sets = null,
    Object? reps = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutSetImplCopyWith<$Res>
    implements $WeightLiftingExerciseEntryCopyWith<$Res> {
  factory _$$WorkoutSetImplCopyWith(
          _$WorkoutSetImpl value, $Res Function(_$WorkoutSetImpl) then) =
      __$$WorkoutSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int sets,
      int reps,
      int weight});
}

/// @nodoc
class __$$WorkoutSetImplCopyWithImpl<$Res>
    extends _$WeightLiftingExerciseEntryCopyWithImpl<$Res, _$WorkoutSetImpl>
    implements _$$WorkoutSetImplCopyWith<$Res> {
  __$$WorkoutSetImplCopyWithImpl(
      _$WorkoutSetImpl _value, $Res Function(_$WorkoutSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? sets = null,
    Object? reps = null,
    Object? weight = null,
  }) {
    return _then(_$WorkoutSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutSetImpl implements _WorkoutSet {
  _$WorkoutSetImpl(
      {required this.id,
      required this.workoutId,
      required this.exerciseId,
      required this.sets,
      required this.reps,
      required this.weight});

  factory _$WorkoutSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutSetImplFromJson(json);

  /// The id of the workout set
  @override
  final String id;

  /// The id of the workout the set is associated with
  @override
  final String workoutId;

  /// The id of the workout exercise the set is associated with
  @override
  final String exerciseId;

  /// The number of sets completed
  @override
  final int sets;

  /// The number of reps completed
  @override
  final int reps;

  /// The weight lifted
  @override
  final int weight;

  @override
  String toString() {
    return 'WeightLiftingExerciseEntry(id: $id, workoutId: $workoutId, exerciseId: $exerciseId, sets: $sets, reps: $reps, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, workoutId, exerciseId, sets, reps, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutSetImplCopyWith<_$WorkoutSetImpl> get copyWith =>
      __$$WorkoutSetImplCopyWithImpl<_$WorkoutSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutSetImplToJson(
      this,
    );
  }
}

abstract class _WorkoutSet implements WeightLiftingExerciseEntry {
  factory _WorkoutSet(
      {required final String id,
      required final String workoutId,
      required final String exerciseId,
      required final int sets,
      required final int reps,
      required final int weight}) = _$WorkoutSetImpl;

  factory _WorkoutSet.fromJson(Map<String, dynamic> json) =
      _$WorkoutSetImpl.fromJson;

  @override

  /// The id of the workout set
  String get id;
  @override

  /// The id of the workout the set is associated with
  String get workoutId;
  @override

  /// The id of the workout exercise the set is associated with
  String get exerciseId;
  @override

  /// The number of sets completed
  int get sets;
  @override

  /// The number of reps completed
  int get reps;
  @override

  /// The weight lifted
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutSetImplCopyWith<_$WorkoutSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
