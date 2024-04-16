import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

part 'analysis_model.freezed.dart';
part 'analysis_model.g.dart';

@freezed
class AnalysisModel with _$AnalysisModel {

  factory AnalysisModel({
    required String aiComment,
    required String matchText,
    required String skinType,
    required String goodCount,
    required String badCount,
    required String dangerCount,
    required int allergieCount,
    required int medicCount,
    required List<IngredientModel> ingredientList,
    
  }) = _AnalysisModel;

  factory AnalysisModel.fromJson(Map<String, dynamic> json) => _$AnalysisModelFromJson(json);
}