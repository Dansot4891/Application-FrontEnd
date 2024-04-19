import 'package:freezed_annotation/freezed_annotation.dart';

part 'skin_type_model.freezed.dart';
part 'skin_type_model.g.dart';

@freezed
class SkinTypeModel with _$SkinTypeModel {

  factory SkinTypeModel({
    required int id,
    required String skin_type,
    required String skinDescription,
    required bool positivity_status,
  }) = _SkinTypeModel;

  factory SkinTypeModel.fromJson(Map<String, dynamic> json) => _$SkinTypeModelFromJson(json);
}