import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_purchase.freezed.dart';
part 'cosmetic_purchase.g.dart';

@freezed
class CosmeticPurchaseModel with _$CosmeticPurchaseModel {

  factory CosmeticPurchaseModel(int id, String purchaseSite, int price, String url) = _CosmeticPurchaseModel;

  factory CosmeticPurchaseModel.fromJson(Map<String, dynamic> json) => _$CosmeticPurchaseModelFromJson(json);
}