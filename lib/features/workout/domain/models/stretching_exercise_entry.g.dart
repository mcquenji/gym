// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stretching_exercise_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StretchingExerciseEntryImpl _$$StretchingExerciseEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$StretchingExerciseEntryImpl(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      exerciseId: json['exerciseId'] as String,
      duration: json['duration'] as int,
      repetitions: json['repetitions'] as int,
    );

Map<String, dynamic> _$$StretchingExerciseEntryImplToJson(
        _$StretchingExerciseEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'duration': instance.duration,
      'repetitions': instance.repetitions,
    };
