// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientModelImpl _$$IngredientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientModelImpl(
      json['ingredients_id'] as int,
      json['ingredient_name'] as String,
      json['grade'] as int,
      json['bookmark'] as bool,
      json['purpose'] as String,
      json['function'] as String,
    );

Map<String, dynamic> _$$IngredientModelImplToJson(
        _$IngredientModelImpl instance) =>
    <String, dynamic>{
      'ingredients_id': instance.ingredients_id,
      'ingredient_name': instance.ingredient_name,
      'grade': instance.grade,
      'bookmark': instance.bookmark,
      'purpose': instance.purpose,
      'function': instance.function,
    };
