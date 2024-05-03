// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvaluationModelImpl _$$EvaluationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvaluationModelImpl(
      analysis_id: json['analysis_id'] as int,
      analysis_score: json['analysis_score'] as int,
      cosmetic_score: json['cosmetic_score'] as int,
      cosmetic_score2: json['cosmetic_score2'] as int?,
    );

Map<String, dynamic> _$$EvaluationModelImplToJson(
        _$EvaluationModelImpl instance) =>
    <String, dynamic>{
      'analysis_id': instance.analysis_id,
      'analysis_score': instance.analysis_score,
      'cosmetic_score': instance.cosmetic_score,
      'cosmetic_score2': instance.cosmetic_score2,
    };
