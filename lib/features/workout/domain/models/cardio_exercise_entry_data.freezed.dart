// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardio_exercise_entry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardioExerciseEntryData _$CardioExerciseEntryDataFromJson(
    Map<String, dynamic> json) {
  return _CardioExerciseEntryData.fromJson(json);
}

/// @nodoc
mixin _$CardioExerciseEntryData {
  /// The duration of the cardio exercise in seconds
  int get duration => throw _privateConstructorUsedError;

  /// The distance of the cardio exercise in meters
  int get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardioExerciseEntryDataCopyWith<CardioExerciseEntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardioExerciseEntryDataCopyWith<$Res> {
  factory $CardioExerciseEntryDataCopyWith(CardioExerciseEntryData value,
          $Res Function(CardioExerciseEntryData) then) =
      _$CardioExerciseEntryDataCopyWithImpl<$Res, CardioExerciseEntryData>;
  @useResult
  $Res call({int duration, int distance});
}

/// @nodoc
class _$CardioExerciseEntryDataCopyWithImpl<$Res,
        $Val extends CardioExerciseEntryData>
    implements $CardioExerciseEntryDataCopyWith<$Res> {
  _$CardioExerciseEntryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$CardioExerciseEntryDataImplCopyWith<$Res>
    implements $CardioExerciseEntryDataCopyWith<$Res> {
  factory _$$CardioExerciseEntryDataImplCopyWith(
          _$CardioExerciseEntryDataImpl value,
          $Res Function(_$CardioExerciseEntryDataImpl) then) =
      __$$CardioExerciseEntryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration, int distance});
}

/// @nodoc
class __$$CardioExerciseEntryDataImplCopyWithImpl<$Res>
    extends _$CardioExerciseEntryDataCopyWithImpl<$Res,
        _$CardioExerciseEntryDataImpl>
    implements _$$CardioExerciseEntryDataImplCopyWith<$Res> {
  __$$CardioExerciseEntryDataImplCopyWithImpl(
      _$CardioExerciseEntryDataImpl _value,
      $Res Function(_$CardioExerciseEntryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_$CardioExerciseEntryDataImpl(
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
class _$CardioExerciseEntryDataImpl implements _CardioExerciseEntryData {
  _$CardioExerciseEntryDataImpl(
      {required this.duration, required this.distance});

  factory _$CardioExerciseEntryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardioExerciseEntryDataImplFromJson(json);

  /// The duration of the cardio exercise in seconds
  @override
  final int duration;

  /// The distance of the cardio exercise in meters
  @override
  final int distance;

  @override
  String toString() {
    return 'CardioExerciseEntryData(duration: $duration, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardioExerciseEntryDataImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardioExerciseEntryDataImplCopyWith<_$CardioExerciseEntryDataImpl>
      get copyWith => __$$CardioExerciseEntryDataImplCopyWithImpl<
          _$CardioExerciseEntryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardioExerciseEntryDataImplToJson(
      this,
    );
  }
}

abstract class _CardioExerciseEntryData implements CardioExerciseEntryData {
  factory _CardioExerciseEntryData(
      {required final int duration,
      required final int distance}) = _$CardioExerciseEntryDataImpl;

  factory _CardioExerciseEntryData.fromJson(Map<String, dynamic> json) =
      _$CardioExerciseEntryDataImpl.fromJson;

  @override

  /// The duration of the cardio exercise in seconds
  int get duration;
  @override

  /// The distance of the cardio exercise in meters
  int get distance;
  @override
  @JsonKey(ignore: true)
  _$$CardioExerciseEntryDataImplCopyWith<_$CardioExerciseEntryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
