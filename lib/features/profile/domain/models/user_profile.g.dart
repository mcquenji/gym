// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      dateOfBirthTimestamp: json['dateOfBirthTimestamp'] as int,
      weight: (json['weight'] as num).toDouble(),
      height: json['height'] as int,
      bodyFatPercentage: (json['bodyFatPercentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfBirthTimestamp': instance.dateOfBirthTimestamp,
      'weight': instance.weight,
      'height': instance.height,
      'bodyFatPercentage': instance.bodyFatPercentage,
    };
