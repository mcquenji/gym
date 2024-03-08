// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutSessionImpl _$$WorkoutSessionImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutSessionImpl(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      userId: json['userId'] as String,
      completedAtTimestamp: json['completedAtTimestamp'] as int?,
      startedAtTimestamp: json['startedAtTimestamp'] as int,
      completedSets: (json['completedSets'] as List<dynamic>?)
              ?.map((e) => ExerciseEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hotSwaps: (json['hotSwaps'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      skippedExercises: (json['skippedExercises'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WorkoutSessionImplToJson(
        _$WorkoutSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'userId': instance.userId,
      'completedAtTimestamp': instance.completedAtTimestamp,
      'startedAtTimestamp': instance.startedAtTimestamp,
      'completedSets': instance.completedSets,
      'hotSwaps': instance.hotSwaps,
      'skippedExercises': instance.skippedExercises,
    };
