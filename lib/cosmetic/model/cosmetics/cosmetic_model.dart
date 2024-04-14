import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_purchase.dart';

part 'cosmetic_model.freezed.dart';
part 'cosmetic_model.g.dart';

@freezed
class CosmeticModel with _$CosmeticModel {

  factory CosmeticModel(int id, String name, String imagePath, int lowestPrice, List<CosmeticPurchaseModel> cosmeticPurchaseLinks) = _CosmeticModel;

  factory CosmeticModel.fromJson(Map<String, dynamic> json) => _$CosmeticModelFromJson(json);
}