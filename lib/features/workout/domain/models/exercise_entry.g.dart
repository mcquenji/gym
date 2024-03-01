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
      type: $enumDecode(_$ExerciseEntryDataTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ExerciseEntryImplToJson(_$ExerciseEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'timestamp': instance.timestamp,
      'data': instance.data,
      'type': _$ExerciseEntryDataTypeEnumMap[instance.type]!,
    };

const _$ExerciseEntryDataTypeEnumMap = {
  ExerciseEntryDataType.weightLifting: 'weightLifting',
  ExerciseEntryDataType.stretching: 'stretching',
  ExerciseEntryDataType.cardio: 'cardio',
};
