import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
class IngredientModel with _$IngredientModel {

  factory IngredientModel(int ingredients_id, String ingredient_name, int grade, bool bookmark, String purpose, String function) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);
}