import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_model.freezed.dart';
part 'evaluation_model.g.dart';

@freezed
class EvaluationModel with _$EvaluationModel {

  factory EvaluationModel({required int analysis_id, required int analysis_score, required int cosmetic_score,}) = _EvaluationModel;

  factory EvaluationModel.fromJson(Map<String, dynamic> json) => _$EvaluationModelFromJson(json);
}