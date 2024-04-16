// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalysisModelImpl _$$AnalysisModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisModelImpl(
      aiComment: json['aiComment'] as String,
      matchText: json['matchText'] as String,
      skinType: json['skinType'] as String,
      goodCount: json['goodCount'] as String,
      badCount: json['badCount'] as String,
      dangerCount: json['dangerCount'] as String,
      allergieCount: json['allergieCount'] as int,
      medicCount: json['medicCount'] as int,
      ingredientList: (json['ingredientList'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalysisModelImplToJson(_$AnalysisModelImpl instance) =>
    <String, dynamic>{
      'aiComment': instance.aiComment,
      'matchText': instance.matchText,
      'skinType': instance.skinType,
      'goodCount': instance.goodCount,
      'badCount': instance.badCount,
      'dangerCount': instance.dangerCount,
      'allergieCount': instance.allergieCount,
      'medicCount': instance.medicCount,
      'ingredientList': instance.ingredientList,
    };
