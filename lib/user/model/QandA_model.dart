import 'package:freezed_annotation/freezed_annotation.dart';

part 'QandA_model.freezed.dart';
part 'QandA_model.g.dart';

@freezed
class QandAModel with _$QandAModel {

  factory QandAModel(String qna_id, String qna_subject, String qna_content, bool answer_status, String answer) = _QandAModel;

  factory QandAModel.fromJson(Map<String, dynamic> json) => _$QandAModelFromJson(json);
}