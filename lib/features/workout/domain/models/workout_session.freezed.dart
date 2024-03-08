// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutSession _$WorkoutSessionFromJson(Map<String, dynamic> json) {
  return _WorkoutSession.fromJson(json);
}

/// @nodoc
mixin _$WorkoutSession {
  /// The id of the workout session.
  String get id => throw _privateConstructorUsedError;

  /// The id of the workout that the session is based on.
  String get workoutId => throw _privateConstructorUsedError;

  /// The id of the user who completed the workout.
  String get userId => throw _privateConstructorUsedError;

  /// The date and time that the workout was completed.
  ///
  /// If this workout has not been completed yet, this value will be null.
  int? get completedAtTimestamp => throw _privateConstructorUsedError;

  /// The date and time that the workout was started.
  int get startedAtTimestamp => throw _privateConstructorUsedError;

  /// A list of the sets that were completed during the workout.
  List<ExerciseEntry> get completedSets => throw _privateConstructorUsedError;

  /// A map of the hot swaps that were made during the workout.
  ///
  /// The key is the id of the exercise that was swapped out, and the value is the exercise that was swapped in.
  Map<String, WorkoutExercise> get hotSwaps =>
      throw _privateConstructorUsedError;

  /// A list of the id's of skipped exercises during the workout.
  List<String> get skippedExercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutSessionCopyWith<WorkoutSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSessionCopyWith<$Res> {
  factory $WorkoutSessionCopyWith(
          WorkoutSession value, $Res Function(WorkoutSession) then) =
      _$WorkoutSessionCopyWithImpl<$Res, WorkoutSession>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String userId,
      int? completedAtTimestamp,
      int startedAtTimestamp,
      List<ExerciseEntry> completedSets,
      Map<String, WorkoutExercise> hotSwaps,
      List<String> skippedExercises});
}

/// @nodoc
class _$WorkoutSessionCopyWithImpl<$Res, $Val extends WorkoutSession>
    implements $WorkoutSessionCopyWith<$Res> {
  _$WorkoutSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? userId = null,
    Object? completedAtTimestamp = freezed,
    Object? startedAtTimestamp = null,
    Object? completedSets = null,
    Object? hotSwaps = null,
    Object? skippedExercises = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      completedAtTimestamp: freezed == completedAtTimestamp
          ? _value.completedAtTimestamp
          : completedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAtTimestamp: null == startedAtTimestamp
          ? _value.startedAtTimestamp
          : startedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseEntry>,
      hotSwaps: null == hotSwaps
          ? _value.hotSwaps
          : hotSwaps // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkoutExercise>,
      skippedExercises: null == skippedExercises
          ? _value.skippedExercises
          : skippedExercises // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutSessionImplCopyWith<$Res>
    implements $WorkoutSessionCopyWith<$Res> {
  factory _$$WorkoutSessionImplCopyWith(_$WorkoutSessionImpl value,
          $Res Function(_$WorkoutSessionImpl) then) =
      __$$WorkoutSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String userId,
      int? completedAtTimestamp,
      int startedAtTimestamp,
      List<ExerciseEntry> completedSets,
      Map<String, WorkoutExercise> hotSwaps,
      List<String> skippedExercises});
}

/// @nodoc
class __$$WorkoutSessionImplCopyWithImpl<$Res>
    extends _$WorkoutSessionCopyWithImpl<$Res, _$WorkoutSessionImpl>
    implements _$$WorkoutSessionImplCopyWith<$Res> {
  __$$WorkoutSessionImplCopyWithImpl(
      _$WorkoutSessionImpl _value, $Res Function(_$WorkoutSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? userId = null,
    Object? completedAtTimestamp = freezed,
    Object? startedAtTimestamp = null,
    Object? completedSets = null,
    Object? hotSwaps = null,
    Object? skippedExercises = null,
  }) {
    return _then(_$WorkoutSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      completedAtTimestamp: freezed == completedAtTimestamp
          ? _value.completedAtTimestamp
          : completedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAtTimestamp: null == startedAtTimestamp
          ? _value.startedAtTimestamp
          : startedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value._completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseEntry>,
      hotSwaps: null == hotSwaps
          ? _value._hotSwaps
          : hotSwaps // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkoutExercise>,
      skippedExercises: null == skippedExercises
          ? _value._skippedExercises
          : skippedExercises // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutSessionImpl extends _WorkoutSession {
  _$WorkoutSessionImpl(
      {required this.id,
      required this.workoutId,
      required this.userId,
      required this.completedAtTimestamp,
      required this.startedAtTimestamp,
      final List<ExerciseEntry> completedSets = const [],
      final Map<String, WorkoutExercise> hotSwaps = const {},
      final List<String> skippedExercises = const []})
      : _completedSets = completedSets,
        _hotSwaps = hotSwaps,
        _skippedExercises = skippedExercises,
        super._();

  factory _$WorkoutSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutSessionImplFromJson(json);

  /// The id of the workout session.
  @override
  final String id;

  /// The id of the workout that the session is based on.
  @override
  final String workoutId;

  /// The id of the user who completed the workout.
  @override
  final String userId;

  /// The date and time that the workout was completed.
  ///
  /// If this workout has not been completed yet, this value will be null.
  @override
  final int? completedAtTimestamp;

  /// The date and time that the workout was started.
  @override
  final int startedAtTimestamp;

  /// A list of the sets that were completed during the workout.
  final List<ExerciseEntry> _completedSets;

  /// A list of the sets that were completed during the workout.
  @override
  @JsonKey()
  List<ExerciseEntry> get completedSets {
    if (_completedSets is EqualUnmodifiableListView) return _completedSets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedSets);
  }

  /// A map of the hot swaps that were made during the workout.
  ///
  /// The key is the id of the exercise that was swapped out, and the value is the exercise that was swapped in.
  final Map<String, WorkoutExercise> _hotSwaps;

  /// A map of the hot swaps that were made during the workout.
  ///
  /// The key is the id of the exercise that was swapped out, and the value is the exercise that was swapped in.
  @override
  @JsonKey()
  Map<String, WorkoutExercise> get hotSwaps {
    if (_hotSwaps is EqualUnmodifiableMapView) return _hotSwaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hotSwaps);
  }

  /// A list of the id's of skipped exercises during the workout.
  final List<String> _skippedExercises;

  /// A list of the id's of skipped exercises during the workout.
  @override
  @JsonKey()
  List<String> get skippedExercises {
    if (_skippedExercises is EqualUnmodifiableListView)
      return _skippedExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skippedExercises);
  }

  @override
  String toString() {
    return 'WorkoutSession(id: $id, workoutId: $workoutId, userId: $userId, completedAtTimestamp: $completedAtTimestamp, startedAtTimestamp: $startedAtTimestamp, completedSets: $completedSets, hotSwaps: $hotSwaps, skippedExercises: $skippedExercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.completedAtTimestamp, completedAtTimestamp) ||
                other.completedAtTimestamp == completedAtTimestamp) &&
            (identical(other.startedAtTimestamp, startedAtTimestamp) ||
                other.startedAtTimestamp == startedAtTimestamp) &&
            const DeepCollectionEquality()
                .equals(other._completedSets, _completedSets) &&
            const DeepCollectionEquality().equals(other._hotSwaps, _hotSwaps) &&
            const DeepCollectionEquality()
                .equals(other._skippedExercises, _skippedExercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      workoutId,
      userId,
      completedAtTimestamp,
      startedAtTimestamp,
      const DeepCollectionEquality().hash(_completedSets),
      const DeepCollectionEquality().hash(_hotSwaps),
      const DeepCollectionEquality().hash(_skippedExercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutSessionImplCopyWith<_$WorkoutSessionImpl> get copyWith =>
      __$$WorkoutSessionImplCopyWithImpl<_$WorkoutSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutSessionImplToJson(
      this,
    );
  }
}

abstract class _WorkoutSession extends WorkoutSession {
  factory _WorkoutSession(
      {required final String id,
      required final String workoutId,
      required final String userId,
      required final int? completedAtTimestamp,
      required final int startedAtTimestamp,
      final List<ExerciseEntry> completedSets,
      final Map<String, WorkoutExercise> hotSwaps,
      final List<String> skippedExercises}) = _$WorkoutSessionImpl;
  _WorkoutSession._() : super._();

  factory _WorkoutSession.fromJson(Map<String, dynamic> json) =
      _$WorkoutSessionImpl.fromJson;

  @override

  /// The id of the workout session.
  String get id;
  @override

  /// The id of the workout that the session is based on.
  String get workoutId;
  @override

  /// The id of the user who completed the workout.
  String get userId;
  @override

  /// The date and time that the workout was completed.
  ///
  /// If this workout has not been completed yet, this value will be null.
  int? get completedAtTimestamp;
  @override

  /// The date and time that the workout was started.
  int get startedAtTimestamp;
  @override

  /// A list of the sets that were completed during the workout.
  List<ExerciseEntry> get completedSets;
  @override

  /// A map of the hot swaps that were made during the workout.
  ///
  /// The key is the id of the exercise that was swapped out, and the value is the exercise that was swapped in.
  Map<String, WorkoutExercise> get hotSwaps;
  @override

  /// A list of the id's of skipped exercises during the workout.
  List<String> get skippedExercises;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutSessionImplCopyWith<_$WorkoutSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
