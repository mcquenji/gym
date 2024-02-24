// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseImpl _$$WorkoutExerciseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutExerciseImpl(
      id: json['id'] as String,
      sets: json['sets'] as int,
      maxReps: json['maxReps'] as int,
      minReps: json['minReps'] as int,
    );

Map<String, dynamic> _$$WorkoutExerciseImplToJson(
        _$WorkoutExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sets': instance.sets,
      'maxReps': instance.maxReps,
      'minReps': instance.minReps,
    };
