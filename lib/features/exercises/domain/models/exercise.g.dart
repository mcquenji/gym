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
      level: $enumDecode(_$ExerciseLevelEnumMap, json['level']),
      category: $enumDecode(_$ExerciseCategoryEnumMap, json['category']),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      primaryMuscleGroups: (json['primaryMuscleGroups'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MuscleGroupEnumMap, e))
              .toSet() ??
          const {},
      secondaryMuscleGroups: (json['secondaryMuscleGroups'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MuscleGroupEnumMap, e))
              .toSet() ??
          const {},
      equipment:
          $enumDecodeNullable(_$ExerciseEquipmentEnumMap, json['equipment']),
      force: $enumDecodeNullable(_$ExerciseForceEnumMap, json['force']),
      mechanic:
          $enumDecodeNullable(_$ExerciseMechanicEnumMap, json['mechanic']),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'level': _$ExerciseLevelEnumMap[instance.level]!,
      'category': _$ExerciseCategoryEnumMap[instance.category]!,
      'images': instance.images,
      'primaryMuscleGroups': instance.primaryMuscleGroups
          .map((e) => _$MuscleGroupEnumMap[e]!)
          .toList(),
      'secondaryMuscleGroups': instance.secondaryMuscleGroups
          .map((e) => _$MuscleGroupEnumMap[e]!)
          .toList(),
      'equipment': _$ExerciseEquipmentEnumMap[instance.equipment],
      'force': _$ExerciseForceEnumMap[instance.force],
      'mechanic': _$ExerciseMechanicEnumMap[instance.mechanic],
    };

const _$ExerciseLevelEnumMap = {
  ExerciseLevel.beginner: 'beginner',
  ExerciseLevel.intermediate: 'intermediate',
  ExerciseLevel.expert: 'expert',
};

const _$ExerciseCategoryEnumMap = {
  ExerciseCategory.stretching: 'stretching',
  ExerciseCategory.powerlifting: 'powerlifting',
  ExerciseCategory.strongman: 'strongman',
  ExerciseCategory.cardio: 'cardio',
  ExerciseCategory.olympicWeightlifting: 'olympicWeightlifting',
  ExerciseCategory.plyometrics: 'plyometrics',
  ExerciseCategory.strength: 'strength',
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
};

const _$ExerciseForceEnumMap = {
  ExerciseForce.static: 'static',
  ExerciseForce.push: 'push',
  ExerciseForce.pull: 'pull',
};

const _$ExerciseMechanicEnumMap = {
  ExerciseMechanic.compound: 'compound',
  ExerciseMechanic.isolation: 'isolation',
};
