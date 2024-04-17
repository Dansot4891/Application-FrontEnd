import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {

  factory UserModel({int? id, required String name, required String nickname, required String login_id, String? password, required String birth, required String gender, required String email, required String skin_type, required List<String> skin_concerns, required String allergy}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}