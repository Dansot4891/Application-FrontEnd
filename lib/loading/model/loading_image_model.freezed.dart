// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoadingImgModel _$LoadingImgModelFromJson(Map<String, dynamic> json) {
  return _LoadingImgModel.fromJson(json);
}

/// @nodoc
mixin _$LoadingImgModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingImgModelCopyWith<LoadingImgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingImgModelCopyWith<$Res> {
  factory $LoadingImgModelCopyWith(
          LoadingImgModel value, $Res Function(LoadingImgModel) then) =
      _$LoadingImgModelCopyWithImpl<$Res, LoadingImgModel>;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$LoadingImgModelCopyWithImpl<$Res, $Val extends LoadingImgModel>
    implements $LoadingImgModelCopyWith<$Res> {
  _$LoadingImgModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImgModelImplCopyWith<$Res>
    implements $LoadingImgModelCopyWith<$Res> {
  factory _$$LoadingImgModelImplCopyWith(_$LoadingImgModelImpl value,
          $Res Function(_$LoadingImgModelImpl) then) =
      __$$LoadingImgModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$$LoadingImgModelImplCopyWithImpl<$Res>
    extends _$LoadingImgModelCopyWithImpl<$Res, _$LoadingImgModelImpl>
    implements _$$LoadingImgModelImplCopyWith<$Res> {
  __$$LoadingImgModelImplCopyWithImpl(
      _$LoadingImgModelImpl _value, $Res Function(_$LoadingImgModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$LoadingImgModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadingImgModelImpl implements _LoadingImgModel {
  _$LoadingImgModelImpl(
      {required this.id, required this.name, required this.image});

  factory _$LoadingImgModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingImgModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'LoadingImgModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImgModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImgModelImplCopyWith<_$LoadingImgModelImpl> get copyWith =>
      __$$LoadingImgModelImplCopyWithImpl<_$LoadingImgModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingImgModelImplToJson(
      this,
    );
  }
}

abstract class _LoadingImgModel implements LoadingImgModel {
  factory _LoadingImgModel(
      {required final int id,
      required final String name,
      required final String image}) = _$LoadingImgModelImpl;

  factory _LoadingImgModel.fromJson(Map<String, dynamic> json) =
      _$LoadingImgModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImgModelImplCopyWith<_$LoadingImgModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
