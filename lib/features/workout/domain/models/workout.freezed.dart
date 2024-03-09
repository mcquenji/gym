// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  /// The id of the workout.
  String get id => throw _privateConstructorUsedError;

  /// The name of the workout.
  String get name => throw _privateConstructorUsedError;

  /// The id of the user who created the workout.
  String get creatorId => throw _privateConstructorUsedError;

  /// The exercises that make up the workout.
  List<WorkoutExercise> get exercises => throw _privateConstructorUsedError;

  /// The category that the workout falls under.
  ///
  /// This is calculated based on the predominant category of the exercises in the workout.
  ///
  /// If the workout has no exercises, this value will be default to [ExerciseCategory.strength].
  ExerciseCategory get predominantCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {String id,
      String name,
      String creatorId,
      List<WorkoutExercise> exercises,
      ExerciseCategory predominantCategory});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creatorId = null,
    Object? exercises = null,
    Object? predominantCategory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
      predominantCategory: null == predominantCategory
          ? _value.predominantCategory
          : predominantCategory // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutImplCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$WorkoutImplCopyWith(
          _$WorkoutImpl value, $Res Function(_$WorkoutImpl) then) =
      __$$WorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String creatorId,
      List<WorkoutExercise> exercises,
      ExerciseCategory predominantCategory});
}

/// @nodoc
class __$$WorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$WorkoutImpl>
    implements _$$WorkoutImplCopyWith<$Res> {
  __$$WorkoutImplCopyWithImpl(
      _$WorkoutImpl _value, $Res Function(_$WorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creatorId = null,
    Object? exercises = null,
    Object? predominantCategory = null,
  }) {
    return _then(_$WorkoutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExercise>,
      predominantCategory: null == predominantCategory
          ? _value.predominantCategory
          : predominantCategory // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutImpl implements _Workout {
  _$WorkoutImpl(
      {required this.id,
      required this.name,
      required this.creatorId,
      required final List<WorkoutExercise> exercises,
      required this.predominantCategory})
      : _exercises = exercises;

  factory _$WorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutImplFromJson(json);

  /// The id of the workout.
  @override
  final String id;

  /// The name of the workout.
  @override
  final String name;

  /// The id of the user who created the workout.
  @override
  final String creatorId;

  /// The exercises that make up the workout.
  final List<WorkoutExercise> _exercises;

  /// The exercises that make up the workout.
  @override
  List<WorkoutExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  /// The category that the workout falls under.
  ///
  /// This is calculated based on the predominant category of the exercises in the workout.
  ///
  /// If the workout has no exercises, this value will be default to [ExerciseCategory.strength].
  @override
  final ExerciseCategory predominantCategory;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, creatorId: $creatorId, exercises: $exercises, predominantCategory: $predominantCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.predominantCategory, predominantCategory) ||
                other.predominantCategory == predominantCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, creatorId,
      const DeepCollectionEquality().hash(_exercises), predominantCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      __$$WorkoutImplCopyWithImpl<_$WorkoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutImplToJson(
      this,
    );
  }
}

abstract class _Workout implements Workout {
  factory _Workout(
      {required final String id,
      required final String name,
      required final String creatorId,
      required final List<WorkoutExercise> exercises,
      required final ExerciseCategory predominantCategory}) = _$WorkoutImpl;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$WorkoutImpl.fromJson;

  @override

  /// The id of the workout.
  String get id;
  @override

  /// The name of the workout.
  String get name;
  @override

  /// The id of the user who created the workout.
  String get creatorId;
  @override

  /// The exercises that make up the workout.
  List<WorkoutExercise> get exercises;
  @override

  /// The category that the workout falls under.
  ///
  /// This is calculated based on the predominant category of the exercises in the workout.
  ///
  /// If the workout has no exercises, this value will be default to [ExerciseCategory.strength].
  ExerciseCategory get predominantCategory;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
