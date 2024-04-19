// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientModelImpl _$$IngredientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientModelImpl(
      name: json['name'] as String,
      grade: json['grade'] as int,
      purpose:
          (json['purpose'] as List<dynamic>).map((e) => e as String).toList(),
      preference: json['preference'] as bool,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      skin_type: (json['skin_type'] as List<dynamic>?)
          ?.map((e) => SkinTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IngredientModelImplToJson(
        _$IngredientModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'grade': instance.grade,
      'purpose': instance.purpose,
      'preference': instance.preference,
      'features': instance.features,
      'skin_type': instance.skin_type,
    };
