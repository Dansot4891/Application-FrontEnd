// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QandA_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QandAModelImpl _$$QandAModelImplFromJson(Map<String, dynamic> json) =>
    _$QandAModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      answer_status: json['answer_status'] as bool,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$QandAModelImplToJson(_$QandAModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'answer_status': instance.answer_status,
      'answer': instance.answer,
    };
