// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompareAnalysisModelImpl _$$CompareAnalysisModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompareAnalysisModelImpl(
      analysisList: (json['analysisList'] as List<dynamic>)
          .map((e) => AnalysisModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratio: (json['ratio'] as List<dynamic>).map((e) => e as int).toList(),
      AI_total_description: json['AI_total_description'] as String,
    );

Map<String, dynamic> _$$CompareAnalysisModelImplToJson(
        _$CompareAnalysisModelImpl instance) =>
    <String, dynamic>{
      'analysisList': instance.analysisList,
      'ratio': instance.ratio,
      'AI_total_description': instance.AI_total_description,
    };
