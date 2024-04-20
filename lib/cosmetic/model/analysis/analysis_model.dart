import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

part 'analysis_model.freezed.dart';
part 'analysis_model.g.dart';

@freezed
class AnalysisModel with _$AnalysisModel {

  factory AnalysisModel({
    required String ai_description, // AI 분석 코멘트
    required int score, // AI 사용자와의 적합도
    required int type_posit, // 피부타입에 대한 긍정 성분 기준
    required int type_nega, // 피부타입에 대한 부정 성분 기준
    required int type_danger, // 피부타입에 대한 주의 성분 기준
    required int allArg_danger, // 알레르기 위험 성분 개수
    required int danger, // 의약처 위험 성분 개수
    required List<IngredientModel> ingredient, // 성분 리스트
    
  }) = _AnalysisModel;

  factory AnalysisModel.fromJson(Map<String, dynamic> json) => _$AnalysisModelFromJson(json);
}
