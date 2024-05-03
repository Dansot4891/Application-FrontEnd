// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_cosmetic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendCosmeticModelImpl _$$RecommendCosmeticModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendCosmeticModelImpl(
      name: json['name'] as String,
      compatibilityScore: json['compatibilityScore'] as int,
      skintype: json['skintype'] as String,
      skinTypeDescriptions: (json['skinTypeDescriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      keyIngredient: (json['keyIngredient'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$RecommendCosmeticModelImplToJson(
        _$RecommendCosmeticModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'compatibilityScore': instance.compatibilityScore,
      'skintype': instance.skintype,
      'skinTypeDescriptions': instance.skinTypeDescriptions,
      'keyIngredient': instance.keyIngredient,
      'image': instance.image,
    };
