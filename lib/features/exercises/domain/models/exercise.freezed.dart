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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Set<MuscleGroup> get primaryMuscleGroups =>
      throw _privateConstructorUsedError;
  Set<MuscleGroup> get secondaryMuscleGroups =>
      throw _privateConstructorUsedError;
  ExerciseLevel get level => throw _privateConstructorUsedError;
  ExerciseEquipment get equipment => throw _privateConstructorUsedError;
  ExerciseForce get force => throw _privateConstructorUsedError;
  ExerciseCategory get category => throw _privateConstructorUsedError;
  ExerciseMechanic get mechanics => throw _privateConstructorUsedError;

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
      String description,
      Set<MuscleGroup> primaryMuscleGroups,
      Set<MuscleGroup> secondaryMuscleGroups,
      ExerciseLevel level,
      ExerciseEquipment equipment,
      ExerciseForce force,
      ExerciseCategory category,
      ExerciseMechanic mechanics});
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
    Object? description = null,
    Object? primaryMuscleGroups = null,
    Object? secondaryMuscleGroups = null,
    Object? level = null,
    Object? equipment = null,
    Object? force = null,
    Object? category = null,
    Object? mechanics = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      primaryMuscleGroups: null == primaryMuscleGroups
          ? _value.primaryMuscleGroups
          : primaryMuscleGroups // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      secondaryMuscleGroups: null == secondaryMuscleGroups
          ? _value.secondaryMuscleGroups
          : secondaryMuscleGroups // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExerciseLevel,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as ExerciseEquipment,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as ExerciseForce,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
      mechanics: null == mechanics
          ? _value.mechanics
          : mechanics // ignore: cast_nullable_to_non_nullable
              as ExerciseMechanic,
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
      String description,
      Set<MuscleGroup> primaryMuscleGroups,
      Set<MuscleGroup> secondaryMuscleGroups,
      ExerciseLevel level,
      ExerciseEquipment equipment,
      ExerciseForce force,
      ExerciseCategory category,
      ExerciseMechanic mechanics});
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
    Object? description = null,
    Object? primaryMuscleGroups = null,
    Object? secondaryMuscleGroups = null,
    Object? level = null,
    Object? equipment = null,
    Object? force = null,
    Object? category = null,
    Object? mechanics = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      primaryMuscleGroups: null == primaryMuscleGroups
          ? _value._primaryMuscleGroups
          : primaryMuscleGroups // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      secondaryMuscleGroups: null == secondaryMuscleGroups
          ? _value._secondaryMuscleGroups
          : secondaryMuscleGroups // ignore: cast_nullable_to_non_nullable
              as Set<MuscleGroup>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExerciseLevel,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as ExerciseEquipment,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as ExerciseForce,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExerciseCategory,
      mechanics: null == mechanics
          ? _value.mechanics
          : mechanics // ignore: cast_nullable_to_non_nullable
              as ExerciseMechanic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  _$ExerciseImpl(
      {required this.id,
      required this.name,
      required this.description,
      final Set<MuscleGroup> primaryMuscleGroups = const {},
      final Set<MuscleGroup> secondaryMuscleGroups = const {},
      this.level = ExerciseLevel.nil,
      this.equipment = ExerciseEquipment.nil,
      this.force = ExerciseForce.nil,
      this.category = ExerciseCategory.nil,
      this.mechanics = ExerciseMechanic.nil})
      : _primaryMuscleGroups = primaryMuscleGroups,
        _secondaryMuscleGroups = secondaryMuscleGroups;

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final Set<MuscleGroup> _primaryMuscleGroups;
  @override
  @JsonKey()
  Set<MuscleGroup> get primaryMuscleGroups {
    if (_primaryMuscleGroups is EqualUnmodifiableSetView)
      return _primaryMuscleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_primaryMuscleGroups);
  }

  final Set<MuscleGroup> _secondaryMuscleGroups;
  @override
  @JsonKey()
  Set<MuscleGroup> get secondaryMuscleGroups {
    if (_secondaryMuscleGroups is EqualUnmodifiableSetView)
      return _secondaryMuscleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_secondaryMuscleGroups);
  }

  @override
  @JsonKey()
  final ExerciseLevel level;
  @override
  @JsonKey()
  final ExerciseEquipment equipment;
  @override
  @JsonKey()
  final ExerciseForce force;
  @override
  @JsonKey()
  final ExerciseCategory category;
  @override
  @JsonKey()
  final ExerciseMechanic mechanics;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, description: $description, primaryMuscleGroups: $primaryMuscleGroups, secondaryMuscleGroups: $secondaryMuscleGroups, level: $level, equipment: $equipment, force: $force, category: $category, mechanics: $mechanics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._primaryMuscleGroups, _primaryMuscleGroups) &&
            const DeepCollectionEquality()
                .equals(other._secondaryMuscleGroups, _secondaryMuscleGroups) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.force, force) || other.force == force) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.mechanics, mechanics) ||
                other.mechanics == mechanics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_primaryMuscleGroups),
      const DeepCollectionEquality().hash(_secondaryMuscleGroups),
      level,
      equipment,
      force,
      category,
      mechanics);

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
      required final String description,
      final Set<MuscleGroup> primaryMuscleGroups,
      final Set<MuscleGroup> secondaryMuscleGroups,
      final ExerciseLevel level,
      final ExerciseEquipment equipment,
      final ExerciseForce force,
      final ExerciseCategory category,
      final ExerciseMechanic mechanics}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Set<MuscleGroup> get primaryMuscleGroups;
  @override
  Set<MuscleGroup> get secondaryMuscleGroups;
  @override
  ExerciseLevel get level;
  @override
  ExerciseEquipment get equipment;
  @override
  ExerciseForce get force;
  @override
  ExerciseCategory get category;
  @override
  ExerciseMechanic get mechanics;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
