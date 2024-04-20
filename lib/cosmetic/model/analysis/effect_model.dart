import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect_model.freezed.dart';
part 'effect_model.g.dart';

@freezed
class EffectModel with _$EffectModel {

  factory EffectModel({required int num, required String text}) = _EffectModel;

  factory EffectModel.fromJson(Map<String, dynamic> json) => _$EffectModelFromJson(json);
}