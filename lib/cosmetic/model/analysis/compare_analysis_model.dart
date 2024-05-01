import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';

part 'compare_analysis_model.freezed.dart';
part 'compare_analysis_model.g.dart';

@freezed
class CompareAnalysisModel with _$CompareAnalysisModel {

  factory CompareAnalysisModel({
    required List<AnalysisModel> analysisList,
    required List<int> ratio,
    required String AI_total_description,
  }) = _CompareAnalysisModel;

  factory CompareAnalysisModel.fromJson(Map<String, dynamic> json) => _$CompareAnalysisModelFromJson(json);
}