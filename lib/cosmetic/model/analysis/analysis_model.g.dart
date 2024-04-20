// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalysisModelImpl _$$AnalysisModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisModelImpl(
      ai_description: json['ai_description'] as String,
      score: json['score'] as int,
      type_posit: json['type_posit'] as int,
      type_nega: json['type_nega'] as int,
      type_danger: json['type_danger'] as int,
      allArg_danger: json['allArg_danger'] as int,
      danger: json['danger'] as int,
      ingredient: (json['ingredient'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalysisModelImplToJson(_$AnalysisModelImpl instance) =>
    <String, dynamic>{
      'ai_description': instance.ai_description,
      'score': instance.score,
      'type_posit': instance.type_posit,
      'type_nega': instance.type_nega,
      'type_danger': instance.type_danger,
      'allArg_danger': instance.allArg_danger,
      'danger': instance.danger,
      'ingredient': instance.ingredient,
    };
