// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseImpl _$$WorkoutExerciseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutExerciseImpl(
      id: json['id'] as String,
      data: json['data'] as Map<String, dynamic>,
      type: $enumDecode(_$ExerciseDataTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$WorkoutExerciseImplToJson(
        _$WorkoutExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'type': _$ExerciseDataTypeEnumMap[instance.type]!,
    };

const _$ExerciseDataTypeEnumMap = {
  ExerciseDataType.weightLifting: 'weightLifting',
  ExerciseDataType.stretching: 'stretching',
  ExerciseDataType.cardio: 'cardio',
};
