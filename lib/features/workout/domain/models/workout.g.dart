// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      creatorId: json['creatorId'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => WorkoutExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      predominantCategory:
          $enumDecode(_$ExerciseCategoryEnumMap, json['predominantCategory']),
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creatorId': instance.creatorId,
      'exercises': instance.exercises,
      'predominantCategory':
          _$ExerciseCategoryEnumMap[instance.predominantCategory]!,
    };

const _$ExerciseCategoryEnumMap = {
  ExerciseCategory.stretching: 'stretching',
  ExerciseCategory.powerlifting: 'powerlifting',
  ExerciseCategory.strongman: 'strongman',
  ExerciseCategory.cardio: 'cardio',
  ExerciseCategory.olympicWeightlifting: 'olympic weightlifting',
  ExerciseCategory.plyometrics: 'plyometrics',
  ExerciseCategory.strength: 'strength',
};
