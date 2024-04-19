import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gproject/cosmetic/model/analysis/skin_type_model.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
class IngredientModel with _$IngredientModel {

  factory IngredientModel({
    required String name,
    required int grade,
    required List<String> purpose,
    required bool preference,
    required List<String> features,
    List<SkinTypeModel>? skin_type,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);
}