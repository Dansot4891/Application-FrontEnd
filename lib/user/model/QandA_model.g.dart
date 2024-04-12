// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QandA_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QandAModelImpl _$$QandAModelImplFromJson(Map<String, dynamic> json) =>
    _$QandAModelImpl(
      json['qna_id'] as String,
      json['qna_subject'] as String,
      json['qna_content'] as String,
      json['answer_status'] as bool,
      json['answer'] as String,
    );

Map<String, dynamic> _$$QandAModelImplToJson(_$QandAModelImpl instance) =>
    <String, dynamic>{
      'qna_id': instance.qna_id,
      'qna_subject': instance.qna_subject,
      'qna_content': instance.qna_content,
      'answer_status': instance.answer_status,
      'answer': instance.answer,
    };
