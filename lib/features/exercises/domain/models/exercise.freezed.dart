// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  /// A string identifier unique to each exercise instance, required for database management and retrieval.
  String get id => throw _privateConstructorUsedError;

  /// The name of the exercise, providing a quick reference to the type of activity.
  String get name => throw _privateConstructorUsedError;

  /// Detailed information about how to perform the exercise, in order.
  List<String> get instructions => throw _privateConstructorUsedError;

  /// The level of difficulty of the exercise, helping users identify if it's suitable for their fitness level.
  ExerciseLevel get level => throw _privateConstructorUsedError;

  /// A categorization of the exercise which helps in organizing exercises by their nature or the goals they help achieve.
  ExerciseCategory get category => throw _privateConstructorUsedError;

  /// A list of image URLs that provide visual references for the exercise.
  List<String> get images => throw _privateConstructorUsedError;

  /// A set of the primary muscle groups that the exercise primarily targets, with a default of an empty set.
  Set<MuscleGroup> get primaryMuscles => throw _privateConstructorUsedError;

  /// A set of secondary muscle groups that the exercise also engages, supplementing the primary targets, with a default of an empty set.
  Set<MuscleGroup> get secondaryMuscles => throw _privateConstructorUsedError;

  /// Optional. Specifies the equipment required to perform the exercise, if any.
  ExerciseEquipment? get equipment => throw _privateConstructorUsedError;

  /// Optional. Specifies the type of force (e.g., push, pull) involved in the exercise.
  ExerciseForce? get force => throw _privateConstructorUsedError;

  /// Optional. Describes whether the exercise is compound (involving more than one joint and muscle group) or isolation (targeting a specific muscle group with minimal involvement from others).
  ExerciseMechanic? get mechanic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> instructions,
      ExerciseLevel level,
      ExerciseCategory category,
      List<String> images,
      Set<MuscleGroup> primaryMuscles,
      Set<MuscleGroup> secondaryMuscles,
      ExerciseEquipment? equipment,
      ExerciseForce? force,
      ExerciseMechanic? mechanic});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? instructions = null,
    Object? level = null,
    Object? category = null,
    Object? images = null,
    Object? primaryMuscles = null,
    Object? secondaryMuscles = null,
    Object? equipment = freezed,
    Object? force = freezed,
    Object? mechanic = freezed,
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
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExerciseLevel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      primaryMuscles: null == primaryMuscles
          ? _value.primaryMuscles
          : primaryMuscles // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      secondaryMuscles: null == secondaryMuscles
          ? _value.secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as ExerciseEquipment?,
      force: freezed == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as ExerciseForce?,
      mechanic: freezed == mechanic
          ? _value.mechanic
          : mechanic // ignore: cast_nullable_to_non_nullable
              as ExerciseMechanic?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> instructions,
      ExerciseLevel level,
      ExerciseCategory category,
      List<String> images,
      Set<MuscleGroup> primaryMuscles,
      Set<MuscleGroup> secondaryMuscles,
      ExerciseEquipment? equipment,
      ExerciseForce? force,
      ExerciseMechanic? mechanic});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? instructions = null,
    Object? level = null,
    Object? category = null,
    Object? images = null,
    Object? primaryMuscles = null,
    Object? secondaryMuscles = null,
    Object? equipment = freezed,
    Object? force = freezed,
    Object? mechanic = freezed,
  }) {
    return _then(_$ExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExerciseLevel,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      primaryMuscles: null == primaryMuscles
          ? _value._primaryMuscles
          : primaryMuscles // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      secondaryMuscles: null == secondaryMuscles
          ? _value._secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as ExerciseEquipment?,
      force: freezed == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as ExerciseForce?,
      mechanic: freezed == mechanic
          ? _value.mechanic
          : mechanic // ignore: cast_nullable_to_non_nullable
              as ExerciseMechanic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  _$ExerciseImpl(
      {required this.id,
      required this.name,
      required final List<String> instructions,
      required this.level,
      required this.category,
      required final List<String> images,
      final Set<MuscleGroup> primaryMuscles = const {},
      final Set<MuscleGroup> secondaryMuscles = const {},
      this.equipment,
      this.force,
      this.mechanic})
      : _instructions = instructions,
        _images = images,
        _primaryMuscles = primaryMuscles,
        _secondaryMuscles = secondaryMuscles;

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  /// A string identifier unique to each exercise instance, required for database management and retrieval.
  @override
  final String id;

  /// The name of the exercise, providing a quick reference to the type of activity.
  @override
  final String name;

  /// Detailed information about how to perform the exercise, in order.
  final List<String> _instructions;

  /// Detailed information about how to perform the exercise, in order.
  @override
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  /// The level of difficulty of the exercise, helping users identify if it's suitable for their fitness level.
  @override
  final ExerciseLevel level;

  /// A categorization of the exercise which helps in organizing exercises by their nature or the goals they help achieve.
  @override
  final ExerciseCategory category;

  /// A list of image URLs that provide visual references for the exercise.
  final List<String> _images;

  /// A list of image URLs that provide visual references for the exercise.
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// A set of the primary muscle groups that the exercise primarily targets, with a default of an empty set.
  final Set<MuscleGroup> _primaryMuscles;

  /// A set of the primary muscle groups that the exercise primarily targets, with a default of an empty set.
  @override
  @JsonKey()
  Set<MuscleGroup> get primaryMuscles {
    if (_primaryMuscles is EqualUnmodifiableSetView) return _primaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_primaryMuscles);
  }

  /// A set of secondary muscle groups that the exercise also engages, supplementing the primary targets, with a default of an empty set.
  final Set<MuscleGroup> _secondaryMuscles;

  /// A set of secondary muscle groups that the exercise also engages, supplementing the primary targets, with a default of an empty set.
  @override
  @JsonKey()
  Set<MuscleGroup> get secondaryMuscles {
    if (_secondaryMuscles is EqualUnmodifiableSetView) return _secondaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_secondaryMuscles);
  }

  /// Optional. Specifies the equipment required to perform the exercise, if any.
  @override
  final ExerciseEquipment? equipment;

  /// Optional. Specifies the type of force (e.g., push, pull) involved in the exercise.
  @override
  final ExerciseForce? force;

  /// Optional. Describes whether the exercise is compound (involving more than one joint and muscle group) or isolation (targeting a specific muscle group with minimal involvement from others).
  @override
  final ExerciseMechanic? mechanic;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, instructions: $instructions, level: $level, category: $category, images: $images, primaryMuscles: $primaryMuscles, secondaryMuscles: $secondaryMuscles, equipment: $equipment, force: $force, mechanic: $mechanic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._primaryMuscles, _primaryMuscles) &&
            const DeepCollectionEquality()
                .equals(other._secondaryMuscles, _secondaryMuscles) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.force, force) || other.force == force) &&
            (identical(other.mechanic, mechanic) ||
                other.mechanic == mechanic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_instructions),
      level,
      category,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_primaryMuscles),
      const DeepCollectionEquality().hash(_secondaryMuscles),
      equipment,
      force,
      mechanic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {required final String id,
      required final String name,
      required final List<String> instructions,
      required final ExerciseLevel level,
      required final ExerciseCategory category,
      required final List<String> images,
      final Set<MuscleGroup> primaryMuscles,
      final Set<MuscleGroup> secondaryMuscles,
      final ExerciseEquipment? equipment,
      final ExerciseForce? force,
      final ExerciseMechanic? mechanic}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override

  /// A string identifier unique to each exercise instance, required for database management and retrieval.
  String get id;
  @override

  /// The name of the exercise, providing a quick reference to the type of activity.
  String get name;
  @override

  /// Detailed information about how to perform the exercise, in order.
  List<String> get instructions;
  @override

  /// The level of difficulty of the exercise, helping users identify if it's suitable for their fitness level.
  ExerciseLevel get level;
  @override

  /// A categorization of the exercise which helps in organizing exercises by their nature or the goals they help achieve.
  ExerciseCategory get category;
  @override

  /// A list of image URLs that provide visual references for the exercise.
  List<String> get images;
  @override

  /// A set of the primary muscle groups that the exercise primarily targets, with a default of an empty set.
  Set<MuscleGroup> get primaryMuscles;
  @override

  /// A set of secondary muscle groups that the exercise also engages, supplementing the primary targets, with a default of an empty set.
  Set<MuscleGroup> get secondaryMuscles;
  @override

  /// Optional. Specifies the equipment required to perform the exercise, if any.
  ExerciseEquipment? get equipment;
  @override

  /// Optional. Specifies the type of force (e.g., push, pull) involved in the exercise.
  ExerciseForce? get force;
  @override

  /// Optional. Describes whether the exercise is compound (involving more than one joint and muscle group) or isolation (targeting a specific muscle group with minimal involvement from others).
  ExerciseMechanic? get mechanic;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
