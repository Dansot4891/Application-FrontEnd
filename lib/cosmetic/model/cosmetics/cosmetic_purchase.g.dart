// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cosmetic_purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CosmeticPurchaseModelImpl _$$CosmeticPurchaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CosmeticPurchaseModelImpl(
      json['id'] as int,
      json['purchaseSite'] as String,
      json['price'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$$CosmeticPurchaseModelImplToJson(
        _$CosmeticPurchaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchaseSite': instance.purchaseSite,
      'price': instance.price,
      'url': instance.url,
    };
