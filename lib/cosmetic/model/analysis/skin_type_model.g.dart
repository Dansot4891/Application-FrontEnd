// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkinTypeModelImpl _$$SkinTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$SkinTypeModelImpl(
      id: json['id'] as int,
      skin_type: json['skin_type'] as String,
      skinDescription: json['skinDescription'] as String,
      positivity_status: json['positivity_status'] as bool,
    );

Map<String, dynamic> _$$SkinTypeModelImplToJson(_$SkinTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skin_type': instance.skin_type,
      'skinDescription': instance.skinDescription,
      'positivity_status': instance.positivity_status,
    };
