import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatbot_model.freezed.dart';
part 'chatbot_model.g.dart';

@freezed
class ChatBotModel with _$ChatBotModel {

  factory ChatBotModel({required int id, required String comment, @Default("ai") String type,}) = _ChatBotModel;

  factory ChatBotModel.fromJson(Map<String, dynamic> json) => _$ChatBotModelFromJson(json);
}
