// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatbot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBotModelImpl _$$ChatBotModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatBotModelImpl(
      id: json['id'] as int,
      comment: json['comment'] as String,
      type: json['type'] as String? ?? "ai",
    );

Map<String, dynamic> _$$ChatBotModelImplToJson(_$ChatBotModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'type': instance.type,
    };
