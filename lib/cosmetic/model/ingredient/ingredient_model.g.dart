// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientModelImpl _$$IngredientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientModelImpl(
      json['id'] as int,
      json['name'] as String,
      json['grade'] as int,
      (json['purposes'] as List<dynamic>).map((e) => e as String).toList(),
      json['danger_status'] as bool,
      json['allergy_status'] as bool,
      (json['skinTypeFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['preference'] as bool,
      (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$IngredientModelImplToJson(
        _$IngredientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'grade': instance.grade,
      'purposes': instance.purposes,
      'danger_status': instance.danger_status,
      'allergy_status': instance.allergy_status,
      'skinTypeFeatures': instance.skinTypeFeatures,
      'preference': instance.preference,
      'features': instance.features,
    };
