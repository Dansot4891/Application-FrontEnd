// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalysisModelImpl _$$AnalysisModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisModelImpl(
      Ai_description: json['Ai_description'] as String,
      score: json['score'] as int,
      type_posit: json['type_posit'] as int,
      type_neger: json['type_neger'] as int,
      type_danger: json['type_danger'] as int,
      AllArg_danger: json['AllArg_danger'] as int,
      danger: json['danger'] as int,
      ingredient: (json['ingredient'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalysisModelImplToJson(_$AnalysisModelImpl instance) =>
    <String, dynamic>{
      'Ai_description': instance.Ai_description,
      'score': instance.score,
      'type_posit': instance.type_posit,
      'type_neger': instance.type_neger,
      'type_danger': instance.type_danger,
      'AllArg_danger': instance.AllArg_danger,
      'danger': instance.danger,
      'ingredient': instance.ingredient,
    };
