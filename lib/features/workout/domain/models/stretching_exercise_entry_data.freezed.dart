// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stretching_exercise_entry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StretchingExerciseEntryData _$StretchingExerciseEntryDataFromJson(
    Map<String, dynamic> json) {
  return _StretchingExerciseEntryData.fromJson(json);
}

/// @nodoc
mixin _$StretchingExerciseEntryData {
  /// The duration of the stretching exercise in seconds
  int get duration => throw _privateConstructorUsedError;

  /// The number of repetitions
  int get repetitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StretchingExerciseEntryDataCopyWith<StretchingExerciseEntryData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StretchingExerciseEntryDataCopyWith<$Res> {
  factory $StretchingExerciseEntryDataCopyWith(
          StretchingExerciseEntryData value,
          $Res Function(StretchingExerciseEntryData) then) =
      _$StretchingExerciseEntryDataCopyWithImpl<$Res,
          StretchingExerciseEntryData>;
  @useResult
  $Res call({int duration, int repetitions});
}

/// @nodoc
class _$StretchingExerciseEntryDataCopyWithImpl<$Res,
        $Val extends StretchingExerciseEntryData>
    implements $StretchingExerciseEntryDataCopyWith<$Res> {
  _$StretchingExerciseEntryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? repetitions = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$StretchingExerciseEntryDataImplCopyWith<$Res>
    implements $StretchingExerciseEntryDataCopyWith<$Res> {
  factory _$$StretchingExerciseEntryDataImplCopyWith(
          _$StretchingExerciseEntryDataImpl value,
          $Res Function(_$StretchingExerciseEntryDataImpl) then) =
      __$$StretchingExerciseEntryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration, int repetitions});
}

/// @nodoc
class __$$StretchingExerciseEntryDataImplCopyWithImpl<$Res>
    extends _$StretchingExerciseEntryDataCopyWithImpl<$Res,
        _$StretchingExerciseEntryDataImpl>
    implements _$$StretchingExerciseEntryDataImplCopyWith<$Res> {
  __$$StretchingExerciseEntryDataImplCopyWithImpl(
      _$StretchingExerciseEntryDataImpl _value,
      $Res Function(_$StretchingExerciseEntryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? repetitions = null,
  }) {
    return _then(_$StretchingExerciseEntryDataImpl(
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
class _$StretchingExerciseEntryDataImpl
    implements _StretchingExerciseEntryData {
  _$StretchingExerciseEntryDataImpl(
      {required this.duration, required this.repetitions});

  factory _$StretchingExerciseEntryDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StretchingExerciseEntryDataImplFromJson(json);

  /// The duration of the stretching exercise in seconds
  @override
  final int duration;

  /// The number of repetitions
  @override
  final int repetitions;

  @override
  String toString() {
    return 'StretchingExerciseEntryData(duration: $duration, repetitions: $repetitions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StretchingExerciseEntryDataImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.repetitions, repetitions) ||
                other.repetitions == repetitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, repetitions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StretchingExerciseEntryDataImplCopyWith<_$StretchingExerciseEntryDataImpl>
      get copyWith => __$$StretchingExerciseEntryDataImplCopyWithImpl<
          _$StretchingExerciseEntryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StretchingExerciseEntryDataImplToJson(
      this,
    );
  }
}

abstract class _StretchingExerciseEntryData
    implements StretchingExerciseEntryData {
  factory _StretchingExerciseEntryData(
      {required final int duration,
      required final int repetitions}) = _$StretchingExerciseEntryDataImpl;

  factory _StretchingExerciseEntryData.fromJson(Map<String, dynamic> json) =
      _$StretchingExerciseEntryDataImpl.fromJson;

  @override

  /// The duration of the stretching exercise in seconds
  int get duration;
  @override

  /// The number of repetitions
  int get repetitions;
  @override
  @JsonKey(ignore: true)
  _$$StretchingExerciseEntryDataImplCopyWith<_$StretchingExerciseEntryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
