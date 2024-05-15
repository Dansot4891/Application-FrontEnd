// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CosmeticPurchaseModel _$CosmeticPurchaseModelFromJson(
    Map<String, dynamic> json) {
  return _CosmeticPurchaseModel.fromJson(json);
}

/// @nodoc
mixin _$CosmeticPurchaseModel {
  int get id => throw _privateConstructorUsedError;
  String get purchaseSite => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CosmeticPurchaseModelCopyWith<CosmeticPurchaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CosmeticPurchaseModelCopyWith<$Res> {
  factory $CosmeticPurchaseModelCopyWith(CosmeticPurchaseModel value,
          $Res Function(CosmeticPurchaseModel) then) =
      _$CosmeticPurchaseModelCopyWithImpl<$Res, CosmeticPurchaseModel>;
  @useResult
  $Res call({int id, String purchaseSite, String price, String url});
}

/// @nodoc
class _$CosmeticPurchaseModelCopyWithImpl<$Res,
        $Val extends CosmeticPurchaseModel>
    implements $CosmeticPurchaseModelCopyWith<$Res> {
  _$CosmeticPurchaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchaseSite = null,
    Object? price = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      purchaseSite: null == purchaseSite
          ? _value.purchaseSite
          : purchaseSite // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CosmeticPurchaseModelImplCopyWith<$Res>
    implements $CosmeticPurchaseModelCopyWith<$Res> {
  factory _$$CosmeticPurchaseModelImplCopyWith(
          _$CosmeticPurchaseModelImpl value,
          $Res Function(_$CosmeticPurchaseModelImpl) then) =
      __$$CosmeticPurchaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String purchaseSite, String price, String url});
}

/// @nodoc
class __$$CosmeticPurchaseModelImplCopyWithImpl<$Res>
    extends _$CosmeticPurchaseModelCopyWithImpl<$Res,
        _$CosmeticPurchaseModelImpl>
    implements _$$CosmeticPurchaseModelImplCopyWith<$Res> {
  __$$CosmeticPurchaseModelImplCopyWithImpl(_$CosmeticPurchaseModelImpl _value,
      $Res Function(_$CosmeticPurchaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchaseSite = null,
    Object? price = null,
    Object? url = null,
  }) {
    return _then(_$CosmeticPurchaseModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == purchaseSite
          ? _value.purchaseSite
          : purchaseSite // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CosmeticPurchaseModelImpl implements _CosmeticPurchaseModel {
  _$CosmeticPurchaseModelImpl(this.id, this.purchaseSite, this.price, this.url);

  factory _$CosmeticPurchaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CosmeticPurchaseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String purchaseSite;
  @override
  final String price;
  @override
  final String url;

  @override
  String toString() {
    return 'CosmeticPurchaseModel(id: $id, purchaseSite: $purchaseSite, price: $price, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CosmeticPurchaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchaseSite, purchaseSite) ||
                other.purchaseSite == purchaseSite) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, purchaseSite, price, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CosmeticPurchaseModelImplCopyWith<_$CosmeticPurchaseModelImpl>
      get copyWith => __$$CosmeticPurchaseModelImplCopyWithImpl<
          _$CosmeticPurchaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CosmeticPurchaseModelImplToJson(
      this,
    );
  }
}

abstract class _CosmeticPurchaseModel implements CosmeticPurchaseModel {
  factory _CosmeticPurchaseModel(final int id, final String purchaseSite,
      final String price, final String url) = _$CosmeticPurchaseModelImpl;

  factory _CosmeticPurchaseModel.fromJson(Map<String, dynamic> json) =
      _$CosmeticPurchaseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get purchaseSite;
  @override
  String get price;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CosmeticPurchaseModelImplCopyWith<_$CosmeticPurchaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
