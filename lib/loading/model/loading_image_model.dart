import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_image_model.freezed.dart';
part 'loading_image_model.g.dart';

@freezed
class LoadingImgModel with _$LoadingImgModel {

  factory LoadingImgModel({required int id, required String name, required String image}) = _LoadingImgModel;

  factory LoadingImgModel.fromJson(Map<String, dynamic> json) => _$LoadingImgModelFromJson(json);
}