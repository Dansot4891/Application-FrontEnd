// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CosmeticModel _$CosmeticModelFromJson(Map<String, dynamic> json) {
  return _CosmeticModel.fromJson(json);
}

/// @nodoc
mixin _$CosmeticModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get lowestPrice => throw _privateConstructorUsedError;
  List<CosmeticPurchaseModel>? get cosmeticPurchaseLinks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CosmeticModelCopyWith<CosmeticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CosmeticModelCopyWith<$Res> {
  factory $CosmeticModelCopyWith(
          CosmeticModel value, $Res Function(CosmeticModel) then) =
      _$CosmeticModelCopyWithImpl<$Res, CosmeticModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imagePath,
      int lowestPrice,
      List<CosmeticPurchaseModel>? cosmeticPurchaseLinks});
}

/// @nodoc
class _$CosmeticModelCopyWithImpl<$Res, $Val extends CosmeticModel>
    implements $CosmeticModelCopyWith<$Res> {
  _$CosmeticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? lowestPrice = null,
    Object? cosmeticPurchaseLinks = freezed,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      lowestPrice: null == lowestPrice
          ? _value.lowestPrice
          : lowestPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cosmeticPurchaseLinks: freezed == cosmeticPurchaseLinks
          ? _value.cosmeticPurchaseLinks
          : cosmeticPurchaseLinks // ignore: cast_nullable_to_non_nullable
              as List<CosmeticPurchaseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CosmeticModelImplCopyWith<$Res>
    implements $CosmeticModelCopyWith<$Res> {
  factory _$$CosmeticModelImplCopyWith(
          _$CosmeticModelImpl value, $Res Function(_$CosmeticModelImpl) then) =
      __$$CosmeticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imagePath,
      int lowestPrice,
      List<CosmeticPurchaseModel>? cosmeticPurchaseLinks});
}

/// @nodoc
class __$$CosmeticModelImplCopyWithImpl<$Res>
    extends _$CosmeticModelCopyWithImpl<$Res, _$CosmeticModelImpl>
    implements _$$CosmeticModelImplCopyWith<$Res> {
  __$$CosmeticModelImplCopyWithImpl(
      _$CosmeticModelImpl _value, $Res Function(_$CosmeticModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? lowestPrice = null,
    Object? cosmeticPurchaseLinks = freezed,
  }) {
    return _then(_$CosmeticModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      null == lowestPrice
          ? _value.lowestPrice
          : lowestPrice // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == cosmeticPurchaseLinks
          ? _value._cosmeticPurchaseLinks
          : cosmeticPurchaseLinks // ignore: cast_nullable_to_non_nullable
              as List<CosmeticPurchaseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CosmeticModelImpl implements _CosmeticModel {
  _$CosmeticModelImpl(this.id, this.name, this.imagePath, this.lowestPrice,
      final List<CosmeticPurchaseModel>? cosmeticPurchaseLinks)
      : _cosmeticPurchaseLinks = cosmeticPurchaseLinks;

  factory _$CosmeticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CosmeticModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final int lowestPrice;
  final List<CosmeticPurchaseModel>? _cosmeticPurchaseLinks;
  @override
  List<CosmeticPurchaseModel>? get cosmeticPurchaseLinks {
    final value = _cosmeticPurchaseLinks;
    if (value == null) return null;
    if (_cosmeticPurchaseLinks is EqualUnmodifiableListView)
      return _cosmeticPurchaseLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CosmeticModel(id: $id, name: $name, imagePath: $imagePath, lowestPrice: $lowestPrice, cosmeticPurchaseLinks: $cosmeticPurchaseLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CosmeticModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.lowestPrice, lowestPrice) ||
                other.lowestPrice == lowestPrice) &&
            const DeepCollectionEquality()
                .equals(other._cosmeticPurchaseLinks, _cosmeticPurchaseLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imagePath, lowestPrice,
      const DeepCollectionEquality().hash(_cosmeticPurchaseLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CosmeticModelImplCopyWith<_$CosmeticModelImpl> get copyWith =>
      __$$CosmeticModelImplCopyWithImpl<_$CosmeticModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CosmeticModelImplToJson(
      this,
    );
  }
}

abstract class _CosmeticModel implements CosmeticModel {
  factory _CosmeticModel(
          final int id,
          final String name,
          final String imagePath,
          final int lowestPrice,
          final List<CosmeticPurchaseModel>? cosmeticPurchaseLinks) =
      _$CosmeticModelImpl;

  factory _CosmeticModel.fromJson(Map<String, dynamic> json) =
      _$CosmeticModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  int get lowestPrice;
  @override
  List<CosmeticPurchaseModel>? get cosmeticPurchaseLinks;
  @override
  @JsonKey(ignore: true)
  _$$CosmeticModelImplCopyWith<_$CosmeticModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
