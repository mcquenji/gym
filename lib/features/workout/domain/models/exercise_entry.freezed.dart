// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseEntry _$ExerciseEntryFromJson(Map<String, dynamic> json) {
  return _ExerciseEntry.fromJson(json);
}

/// @nodoc
mixin _$ExerciseEntry {
// The id of the entry
  String get id => throw _privateConstructorUsedError;

  /// The id of the workout the entry is associated with
  String get workoutId => throw _privateConstructorUsedError;

  /// The id of the workout exercise the entry is associated with
  String get exerciseId => throw _privateConstructorUsedError;

  /// The timestamp of when the entry was created (in milliseconds since epoch).
  ///
  /// Use [recordedAt] to get the [DateTime] representation of this value.
  int get timestamp => throw _privateConstructorUsedError;

  /// The data of the entry
  ///
  /// The type of the data is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the data to the appropriate type:
  /// - [cardioData] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// The type of the [data] the entry contains.
  ExerciseDataType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseEntryCopyWith<ExerciseEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseEntryCopyWith<$Res> {
  factory $ExerciseEntryCopyWith(
          ExerciseEntry value, $Res Function(ExerciseEntry) then) =
      _$ExerciseEntryCopyWithImpl<$Res, ExerciseEntry>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int timestamp,
      Map<String, dynamic> data,
      ExerciseDataType type});
}

/// @nodoc
class _$ExerciseEntryCopyWithImpl<$Res, $Val extends ExerciseEntry>
    implements $ExerciseEntryCopyWith<$Res> {
  _$ExerciseEntryCopyWithImpl(this._value, this._then);

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
    Object? timestamp = null,
    Object? data = null,
    Object? type = null,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseDataType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseEntryImplCopyWith<$Res>
    implements $ExerciseEntryCopyWith<$Res> {
  factory _$$ExerciseEntryImplCopyWith(
          _$ExerciseEntryImpl value, $Res Function(_$ExerciseEntryImpl) then) =
      __$$ExerciseEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String exerciseId,
      int timestamp,
      Map<String, dynamic> data,
      ExerciseDataType type});
}

/// @nodoc
class __$$ExerciseEntryImplCopyWithImpl<$Res>
    extends _$ExerciseEntryCopyWithImpl<$Res, _$ExerciseEntryImpl>
    implements _$$ExerciseEntryImplCopyWith<$Res> {
  __$$ExerciseEntryImplCopyWithImpl(
      _$ExerciseEntryImpl _value, $Res Function(_$ExerciseEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? timestamp = null,
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_$ExerciseEntryImpl(
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseDataType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseEntryImpl extends _ExerciseEntry {
  _$ExerciseEntryImpl(
      {required this.id,
      required this.workoutId,
      required this.exerciseId,
      required this.timestamp,
      required final Map<String, dynamic> data,
      required this.type})
      : _data = data,
        super._();

  factory _$ExerciseEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseEntryImplFromJson(json);

// The id of the entry
  @override
  final String id;

  /// The id of the workout the entry is associated with
  @override
  final String workoutId;

  /// The id of the workout exercise the entry is associated with
  @override
  final String exerciseId;

  /// The timestamp of when the entry was created (in milliseconds since epoch).
  ///
  /// Use [recordedAt] to get the [DateTime] representation of this value.
  @override
  final int timestamp;

  /// The data of the entry
  ///
  /// The type of the data is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the data to the appropriate type:
  /// - [cardioData] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
  final Map<String, dynamic> _data;

  /// The data of the entry
  ///
  /// The type of the data is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the data to the appropriate type:
  /// - [cardioData] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// The type of the [data] the entry contains.
  @override
  final ExerciseDataType type;

  @override
  String toString() {
    return 'ExerciseEntry(id: $id, workoutId: $workoutId, exerciseId: $exerciseId, timestamp: $timestamp, data: $data, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, workoutId, exerciseId,
      timestamp, const DeepCollectionEquality().hash(_data), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseEntryImplCopyWith<_$ExerciseEntryImpl> get copyWith =>
      __$$ExerciseEntryImplCopyWithImpl<_$ExerciseEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseEntryImplToJson(
      this,
    );
  }
}

abstract class _ExerciseEntry extends ExerciseEntry {
  factory _ExerciseEntry(
      {required final String id,
      required final String workoutId,
      required final String exerciseId,
      required final int timestamp,
      required final Map<String, dynamic> data,
      required final ExerciseDataType type}) = _$ExerciseEntryImpl;
  _ExerciseEntry._() : super._();

  factory _ExerciseEntry.fromJson(Map<String, dynamic> json) =
      _$ExerciseEntryImpl.fromJson;

  @override // The id of the entry
  String get id;
  @override

  /// The id of the workout the entry is associated with
  String get workoutId;
  @override

  /// The id of the workout exercise the entry is associated with
  String get exerciseId;
  @override

  /// The timestamp of when the entry was created (in milliseconds since epoch).
  ///
  /// Use [recordedAt] to get the [DateTime] representation of this value.
  int get timestamp;
  @override

  /// The data of the entry
  ///
  /// The type of the data is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the data to the appropriate type:
  /// - [cardioData] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
  Map<String, dynamic> get data;
  @override

  /// The type of the [data] the entry contains.
  ExerciseDataType get type;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseEntryImplCopyWith<_$ExerciseEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
