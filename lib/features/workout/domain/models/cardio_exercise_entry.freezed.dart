// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardio_exercise_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardioExerciseEntry _$CardioExerciseEntryFromJson(Map<String, dynamic> json) {
  return _CardioExerciseEntry.fromJson(json);
}

/// @nodoc
mixin _$CardioExerciseEntry {
// The id of the workout set
  String get id => throw _privateConstructorUsedError;

  /// The id of the workout the set is associated with
  String get workoutId => throw _privateConstructorUsedError;

  /// The id of the workout exercise the set is associated with
  String get exerciseId => throw _privateConstructorUsedError;

  /// The duration of the cardio exercise in seconds
  int get duration => throw _privateConstructorUsedError;

  /// The distance of the cardio exercise in meters
  int get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardioExerciseEntryCopyWith<CardioExerciseEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardioExerciseEntryCopyWith<$Res> {
  factory $CardioExerciseEntryCopyWith(
          CardioExerciseEntry value, $Res Function(CardioExerciseEntry) then) =
      _$CardioExerciseEntryCopyWithImpl<$Res, CardioExerciseEntry>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int duration,
      int distance});
}

/// @nodoc
class _$CardioExerciseEntryCopyWithImpl<$Res, $Val extends CardioExerciseEntry>
    implements $CardioExerciseEntryCopyWith<$Res> {
  _$CardioExerciseEntryCopyWithImpl(this._value, this._then);

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
    Object? duration = null,
    Object? distance = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardioExerciseEntryImplCopyWith<$Res>
    implements $CardioExerciseEntryCopyWith<$Res> {
  factory _$$CardioExerciseEntryImplCopyWith(_$CardioExerciseEntryImpl value,
          $Res Function(_$CardioExerciseEntryImpl) then) =
      __$$CardioExerciseEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int duration,
      int distance});
}

/// @nodoc
class __$$CardioExerciseEntryImplCopyWithImpl<$Res>
    extends _$CardioExerciseEntryCopyWithImpl<$Res, _$CardioExerciseEntryImpl>
    implements _$$CardioExerciseEntryImplCopyWith<$Res> {
  __$$CardioExerciseEntryImplCopyWithImpl(_$CardioExerciseEntryImpl _value,
      $Res Function(_$CardioExerciseEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_$CardioExerciseEntryImpl(
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardioExerciseEntryImpl implements _CardioExerciseEntry {
  _$CardioExerciseEntryImpl(
      {required this.id,
      required this.workoutId,
      required this.exerciseId,
      required this.duration,
      required this.distance});

  factory _$CardioExerciseEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardioExerciseEntryImplFromJson(json);

// The id of the workout set
  @override
  final String id;

  /// The id of the workout the set is associated with
  @override
  final String workoutId;

  /// The id of the workout exercise the set is associated with
  @override
  final String exerciseId;

  /// The duration of the cardio exercise in seconds
  @override
  final int duration;

  /// The distance of the cardio exercise in meters
  @override
  final int distance;

  @override
  String toString() {
    return 'CardioExerciseEntry(id: $id, workoutId: $workoutId, exerciseId: $exerciseId, duration: $duration, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioExerciseEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, workoutId, exerciseId, duration, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardioExerciseEntryImplCopyWith<_$CardioExerciseEntryImpl> get copyWith =>
      __$$CardioExerciseEntryImplCopyWithImpl<_$CardioExerciseEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioExerciseEntryImplToJson(
      this,
    );
  }
}

abstract class _CardioExerciseEntry implements CardioExerciseEntry {
  factory _CardioExerciseEntry(
      {required final String id,
      required final String workoutId,
      required final String exerciseId,
      required final int duration,
      required final int distance}) = _$CardioExerciseEntryImpl;

  factory _CardioExerciseEntry.fromJson(Map<String, dynamic> json) =
      _$CardioExerciseEntryImpl.fromJson;

  @override // The id of the workout set
  String get id;
  @override

  /// The id of the workout the set is associated with
  String get workoutId;
  @override

  /// The id of the workout exercise the set is associated with
  String get exerciseId;
  @override

  /// The duration of the cardio exercise in seconds
  int get duration;
  @override

  /// The distance of the cardio exercise in meters
  int get distance;
  @override
  @JsonKey(ignore: true)
  _$$CardioExerciseEntryImplCopyWith<_$CardioExerciseEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
