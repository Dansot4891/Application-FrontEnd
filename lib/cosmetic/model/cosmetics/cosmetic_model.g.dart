// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cosmetic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CosmeticModelImpl _$$CosmeticModelImplFromJson(Map<String, dynamic> json) =>
    _$CosmeticModelImpl(
      json['id'] as int,
      json['name'] as String,
      json['imagePath'] as String,
      json['lowestPrice'] as int,
      (json['cosmeticPurchaseLinks'] as List<dynamic>?)
          ?.map(
              (e) => CosmeticPurchaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CosmeticModelImplToJson(_$CosmeticModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'lowestPrice': instance.lowestPrice,
      'cosmeticPurchaseLinks': instance.cosmeticPurchaseLinks,
    };
