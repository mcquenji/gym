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

  /// The requirements that must be met to complete the exercise.
  ///
  /// The type of the requirements is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the requirements to the appropriate type:
  /// - [cardioRequirements] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingRequirements] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingRequirements] if [type] is [ExerciseDataType.weightLifting]
  Map<String, dynamic> get requirements => throw _privateConstructorUsedError;

  /// The type of the [data] the exercise contains.
  ExerciseDataType get type => throw _privateConstructorUsedError;

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
  $Res call(
      {String id, Map<String, dynamic> requirements, ExerciseDataType type});
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
    Object? requirements = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseDataType,
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
  $Res call(
      {String id, Map<String, dynamic> requirements, ExerciseDataType type});
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
    Object? requirements = null,
    Object? type = null,
  }) {
    return _then(_$WorkoutExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
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
class _$WorkoutExerciseImpl extends _WorkoutExercise {
  _$WorkoutExerciseImpl(
      {required this.id,
      required final Map<String, dynamic> requirements,
      required this.type})
      : _requirements = requirements,
        super._();

  factory _$WorkoutExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutExerciseImplFromJson(json);

  /// The id of the underlying exercise
  @override
  final String id;

  /// The requirements that must be met to complete the exercise.
  ///
  /// The type of the requirements is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the requirements to the appropriate type:
  /// - [cardioRequirements] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingRequirements] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingRequirements] if [type] is [ExerciseDataType.weightLifting]
  final Map<String, dynamic> _requirements;

  /// The requirements that must be met to complete the exercise.
  ///
  /// The type of the requirements is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the requirements to the appropriate type:
  /// - [cardioRequirements] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingRequirements] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingRequirements] if [type] is [ExerciseDataType.weightLifting]
  @override
  Map<String, dynamic> get requirements {
    if (_requirements is EqualUnmodifiableMapView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requirements);
  }

  /// The type of the [data] the exercise contains.
  @override
  final ExerciseDataType type;

  @override
  String toString() {
    return 'WorkoutExercise(id: $id, requirements: $requirements, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_requirements), type);

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

abstract class _WorkoutExercise extends WorkoutExercise {
  factory _WorkoutExercise(
      {required final String id,
      required final Map<String, dynamic> requirements,
      required final ExerciseDataType type}) = _$WorkoutExerciseImpl;
  _WorkoutExercise._() : super._();

  factory _WorkoutExercise.fromJson(Map<String, dynamic> json) =
      _$WorkoutExerciseImpl.fromJson;

  @override

  /// The id of the underlying exercise
  String get id;
  @override

  /// The requirements that must be met to complete the exercise.
  ///
  /// The type of the requirements is determined by the [type] field.
  ///
  /// Based on the value of [type], you can cast the requirements to the appropriate type:
  /// - [cardioRequirements] if [type] is [ExerciseDataType.cardio]
  /// - [stretchingRequirements] if [type] is [ExerciseDataType.stretching]
  /// - [weightLiftingRequirements] if [type] is [ExerciseDataType.weightLifting]
  Map<String, dynamic> get requirements;
  @override

  /// The type of the [data] the exercise contains.
  ExerciseDataType get type;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutExerciseImplCopyWith<_$WorkoutExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
