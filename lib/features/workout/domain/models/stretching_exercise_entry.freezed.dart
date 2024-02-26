// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stretching_exercise_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StretchingExerciseEntry _$StretchingExerciseEntryFromJson(
    Map<String, dynamic> json) {
  return _StretchingExerciseEntry.fromJson(json);
}

/// @nodoc
mixin _$StretchingExerciseEntry {
// The id of the workout set
  String get id => throw _privateConstructorUsedError;

  /// The id of the workout the set is associated with
  String get workoutId => throw _privateConstructorUsedError;

  /// The id of the workout exercise the set is associated with
  String get exerciseId => throw _privateConstructorUsedError;

  /// The duration of the stretching exercise in seconds
  int get duration => throw _privateConstructorUsedError;

  /// The number of repetitions
  int get repetitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StretchingExerciseEntryCopyWith<StretchingExerciseEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StretchingExerciseEntryCopyWith<$Res> {
  factory $StretchingExerciseEntryCopyWith(StretchingExerciseEntry value,
          $Res Function(StretchingExerciseEntry) then) =
      _$StretchingExerciseEntryCopyWithImpl<$Res, StretchingExerciseEntry>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int duration,
      int repetitions});
}

/// @nodoc
class _$StretchingExerciseEntryCopyWithImpl<$Res,
        $Val extends StretchingExerciseEntry>
    implements $StretchingExerciseEntryCopyWith<$Res> {
  _$StretchingExerciseEntryCopyWithImpl(this._value, this._then);

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
    Object? repetitions = null,
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
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StretchingExerciseEntryImplCopyWith<$Res>
    implements $StretchingExerciseEntryCopyWith<$Res> {
  factory _$$StretchingExerciseEntryImplCopyWith(
          _$StretchingExerciseEntryImpl value,
          $Res Function(_$StretchingExerciseEntryImpl) then) =
      __$$StretchingExerciseEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int duration,
      int repetitions});
}

/// @nodoc
class __$$StretchingExerciseEntryImplCopyWithImpl<$Res>
    extends _$StretchingExerciseEntryCopyWithImpl<$Res,
        _$StretchingExerciseEntryImpl>
    implements _$$StretchingExerciseEntryImplCopyWith<$Res> {
  __$$StretchingExerciseEntryImplCopyWithImpl(
      _$StretchingExerciseEntryImpl _value,
      $Res Function(_$StretchingExerciseEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? duration = null,
    Object? repetitions = null,
  }) {
    return _then(_$StretchingExerciseEntryImpl(
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
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StretchingExerciseEntryImpl implements _StretchingExerciseEntry {
  _$StretchingExerciseEntryImpl(
      {required this.id,
      required this.workoutId,
      required this.exerciseId,
      required this.duration,
      required this.repetitions});

  factory _$StretchingExerciseEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StretchingExerciseEntryImplFromJson(json);

// The id of the workout set
  @override
  final String id;

  /// The id of the workout the set is associated with
  @override
  final String workoutId;

  /// The id of the workout exercise the set is associated with
  @override
  final String exerciseId;

  /// The duration of the stretching exercise in seconds
  @override
  final int duration;

  /// The number of repetitions
  @override
  final int repetitions;

  @override
  String toString() {
    return 'StretchingExerciseEntry(id: $id, workoutId: $workoutId, exerciseId: $exerciseId, duration: $duration, repetitions: $repetitions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StretchingExerciseEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.repetitions, repetitions) ||
                other.repetitions == repetitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, workoutId, exerciseId, duration, repetitions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StretchingExerciseEntryImplCopyWith<_$StretchingExerciseEntryImpl>
      get copyWith => __$$StretchingExerciseEntryImplCopyWithImpl<
          _$StretchingExerciseEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StretchingExerciseEntryImplToJson(
      this,
    );
  }
}

abstract class _StretchingExerciseEntry implements StretchingExerciseEntry {
  factory _StretchingExerciseEntry(
      {required final String id,
      required final String workoutId,
      required final String exerciseId,
      required final int duration,
      required final int repetitions}) = _$StretchingExerciseEntryImpl;

  factory _StretchingExerciseEntry.fromJson(Map<String, dynamic> json) =
      _$StretchingExerciseEntryImpl.fromJson;

  @override // The id of the workout set
  String get id;
  @override

  /// The id of the workout the set is associated with
  String get workoutId;
  @override

  /// The id of the workout exercise the set is associated with
  String get exerciseId;
  @override

  /// The duration of the stretching exercise in seconds
  int get duration;
  @override

  /// The number of repetitions
  int get repetitions;
  @override
  @JsonKey(ignore: true)
  _$$StretchingExerciseEntryImplCopyWith<_$StretchingExerciseEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
