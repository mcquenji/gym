// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseEntryImpl _$$ExerciseEntryImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseEntryImpl(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      exerciseId: json['exerciseId'] as String,
      timestamp: json['timestamp'] as int,
      data: json['data'] as Map<String, dynamic>,
      type: $enumDecode(_$ExerciseDataTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ExerciseEntryImplToJson(_$ExerciseEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'timestamp': instance.timestamp,
      'data': instance.data,
      'type': _$ExerciseDataTypeEnumMap[instance.type]!,
    };

const _$ExerciseDataTypeEnumMap = {
  ExerciseDataType.weightLifting: 'weightLifting',
  ExerciseDataType.stretching: 'stretching',
  ExerciseDataType.cardio: 'cardio',
};
