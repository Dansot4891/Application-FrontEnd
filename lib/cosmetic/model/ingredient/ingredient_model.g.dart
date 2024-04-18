// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientModelImpl _$$IngredientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientModelImpl(
      json['name'] as String,
      json['grade'] as int,
      (json['purpose'] as List<dynamic>).map((e) => e as String).toList(),
      json['preference'] as bool,
      (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$IngredientModelImplToJson(
        _$IngredientModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'grade': instance.grade,
      'purpose': instance.purpose,
      'preference': instance.preference,
      'features': instance.features,
    };
