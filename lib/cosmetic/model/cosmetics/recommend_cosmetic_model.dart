import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommend_cosmetic_model.freezed.dart';
part 'recommend_cosmetic_model.g.dart';

@freezed
class RecommendCosmeticModel with _$RecommendCosmeticModel {

  factory RecommendCosmeticModel({
    required int id,
    required String name,
    required int compatibilityScore,
    required String skintype,
    required List<String> skinTypeDescriptions,
    required List<String> keyIngredient,
    required String image,
  }) = _RecommendCosmeticModel;

  factory RecommendCosmeticModel.fromJson(Map<String, dynamic> json) => _$RecommendCosmeticModelFromJson(json);
}