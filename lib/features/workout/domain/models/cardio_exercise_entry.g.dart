// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardio_exercise_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardioExerciseEntryImpl _$$CardioExerciseEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$CardioExerciseEntryImpl(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      exerciseId: json['exerciseId'] as String,
      duration: json['duration'] as int,
      distance: json['distance'] as int,
    );

Map<String, dynamic> _$$CardioExerciseEntryImplToJson(
        _$CardioExerciseEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'duration': instance.duration,
      'distance': instance.distance,
    };
