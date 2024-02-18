// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      primaryMuscleGroups: (json['primaryMuscleGroups'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MuscleGroupEnumMap, e))
              .toSet() ??
          const {},
      secondaryMuscleGroups: (json['secondaryMuscleGroups'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MuscleGroupEnumMap, e))
              .toSet() ??
          const {},
      level: $enumDecodeNullable(_$ExerciseLevelEnumMap, json['level']) ??
          ExerciseLevel.nil,
      equipment:
          $enumDecodeNullable(_$ExerciseEquipmentEnumMap, json['equipment']) ??
              ExerciseEquipment.nil,
      force: $enumDecodeNullable(_$ExerciseForceEnumMap, json['force']) ??
          ExerciseForce.nil,
      category:
          $enumDecodeNullable(_$ExerciseCategoryEnumMap, json['category']) ??
              ExerciseCategory.nil,
      mechanics:
          $enumDecodeNullable(_$ExerciseMechanicEnumMap, json['mechanics']) ??
              ExerciseMechanic.nil,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'primaryMuscleGroups': instance.primaryMuscleGroups
          .map((e) => _$MuscleGroupEnumMap[e]!)
          .toList(),
      'secondaryMuscleGroups': instance.secondaryMuscleGroups
          .map((e) => _$MuscleGroupEnumMap[e]!)
          .toList(),
      'level': _$ExerciseLevelEnumMap[instance.level]!,
      'equipment': _$ExerciseEquipmentEnumMap[instance.equipment]!,
      'force': _$ExerciseForceEnumMap[instance.force]!,
      'category': _$ExerciseCategoryEnumMap[instance.category]!,
      'mechanics': _$ExerciseMechanicEnumMap[instance.mechanics]!,
    };

const _$MuscleGroupEnumMap = {
  MuscleGroup.abdominals: 'abdominals',
  MuscleGroup.middleBack: 'middleBack',
  MuscleGroup.adductors: 'adductors',
  MuscleGroup.biceps: 'biceps',
  MuscleGroup.quadriceps: 'quadriceps',
  MuscleGroup.lowerBack: 'lowerBack',
  MuscleGroup.lats: 'lats',
  MuscleGroup.hamstrings: 'hamstrings',
  MuscleGroup.chest: 'chest',
  MuscleGroup.neck: 'neck',
  MuscleGroup.abductors: 'abductors',
  MuscleGroup.glutes: 'glutes',
  MuscleGroup.calves: 'calves',
  MuscleGroup.triceps: 'triceps',
  MuscleGroup.traps: 'traps',
  MuscleGroup.shoulders: 'shoulders',
  MuscleGroup.forearms: 'forearms',
};

const _$ExerciseLevelEnumMap = {
  ExerciseLevel.beginner: 'beginner',
  ExerciseLevel.intermediate: 'intermediate',
  ExerciseLevel.expert: 'expert',
  ExerciseLevel.nil: 'nil',
};

const _$ExerciseEquipmentEnumMap = {
  ExerciseEquipment.cable: 'cable',
  ExerciseEquipment.bands: 'bands',
  ExerciseEquipment.exerciseBall: 'exerciseBall',
  ExerciseEquipment.machine: 'machine',
  ExerciseEquipment.dumbbell: 'dumbbell',
  ExerciseEquipment.eZCurlBar: 'eZCurlBar',
  ExerciseEquipment.other: 'other',
  ExerciseEquipment.barbell: 'barbell',
  ExerciseEquipment.bodyOnly: 'bodyOnly',
  ExerciseEquipment.foamRoll: 'foamRoll',
  ExerciseEquipment.medicineBall: 'medicineBall',
  ExerciseEquipment.kettlebells: 'kettlebells',
  ExerciseEquipment.nil: 'nil',
};

const _$ExerciseForceEnumMap = {
  ExerciseForce.static: 'static',
  ExerciseForce.push: 'push',
  ExerciseForce.pull: 'pull',
  ExerciseForce.nil: 'nil',
};

const _$ExerciseCategoryEnumMap = {
  ExerciseCategory.stretching: 'stretching',
  ExerciseCategory.powerlifting: 'powerlifting',
  ExerciseCategory.strongman: 'strongman',
  ExerciseCategory.cardio: 'cardio',
  ExerciseCategory.olympicWeightlifting: 'olympicWeightlifting',
  ExerciseCategory.plyometrics: 'plyometrics',
  ExerciseCategory.strength: 'strength',
  ExerciseCategory.nil: 'nil',
};

const _$ExerciseMechanicEnumMap = {
  ExerciseMechanic.compound: 'compound',
  ExerciseMechanic.isolation: 'isolation',
  ExerciseMechanic.nil: 'nil',
};
