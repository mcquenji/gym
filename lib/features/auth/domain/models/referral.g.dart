// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralImpl _$$ReferralImplFromJson(Map<String, dynamic> json) =>
    _$ReferralImpl(
      code: json['code'] as String,
      userId: json['userId'] as String,
      referredUserId: json['referredUserId'] as String?,
    );

Map<String, dynamic> _$$ReferralImplToJson(_$ReferralImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'userId': instance.userId,
      'referredUserId': instance.referredUserId,
    };
