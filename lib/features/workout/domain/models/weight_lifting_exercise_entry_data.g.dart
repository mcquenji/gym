// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_lifting_exercise_entry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutSetImpl _$$WorkoutSetImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutSetImpl(
      sets: json['sets'] as int,
      reps: json['reps'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$WorkoutSetImplToJson(_$WorkoutSetImpl instance) =>
    <String, dynamic>{
      'sets': instance.sets,
      'reps': instance.reps,
      'weight': instance.weight,
    };
