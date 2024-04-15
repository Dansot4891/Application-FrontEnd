import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
class IngredientModel with _$IngredientModel {

  factory IngredientModel(int id, String name, int grade, List<String> purposes, bool danger_status, bool allergy_status, List<String> skinTypeFeatures, bool preference, List<String> features,) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);
}