// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommend_cosmetic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendCosmeticModel _$RecommendCosmeticModelFromJson(
    Map<String, dynamic> json) {
  return _RecommendCosmeticModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendCosmeticModel {
  String get name => throw _privateConstructorUsedError;
  int get compatibilityScroe => throw _privateConstructorUsedError;
  String get skintype => throw _privateConstructorUsedError;
  List<String> get skinTypeDescriptions => throw _privateConstructorUsedError;
  List<String> get keyIngredient => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendCosmeticModelCopyWith<RecommendCosmeticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendCosmeticModelCopyWith<$Res> {
  factory $RecommendCosmeticModelCopyWith(RecommendCosmeticModel value,
          $Res Function(RecommendCosmeticModel) then) =
      _$RecommendCosmeticModelCopyWithImpl<$Res, RecommendCosmeticModel>;
  @useResult
  $Res call(
      {String name,
      int compatibilityScroe,
      String skintype,
      List<String> skinTypeDescriptions,
      List<String> keyIngredient,
      String image});
}

/// @nodoc
class _$RecommendCosmeticModelCopyWithImpl<$Res,
        $Val extends RecommendCosmeticModel>
    implements $RecommendCosmeticModelCopyWith<$Res> {
  _$RecommendCosmeticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? compatibilityScroe = null,
    Object? skintype = null,
    Object? skinTypeDescriptions = null,
    Object? keyIngredient = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityScroe: null == compatibilityScroe
          ? _value.compatibilityScroe
          : compatibilityScroe // ignore: cast_nullable_to_non_nullable
              as int,
      skintype: null == skintype
          ? _value.skintype
          : skintype // ignore: cast_nullable_to_non_nullable
              as String,
      skinTypeDescriptions: null == skinTypeDescriptions
          ? _value.skinTypeDescriptions
          : skinTypeDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keyIngredient: null == keyIngredient
          ? _value.keyIngredient
          : keyIngredient // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendCosmeticModelImplCopyWith<$Res>
    implements $RecommendCosmeticModelCopyWith<$Res> {
  factory _$$RecommendCosmeticModelImplCopyWith(
          _$RecommendCosmeticModelImpl value,
          $Res Function(_$RecommendCosmeticModelImpl) then) =
      __$$RecommendCosmeticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int compatibilityScroe,
      String skintype,
      List<String> skinTypeDescriptions,
      List<String> keyIngredient,
      String image});
}

/// @nodoc
class __$$RecommendCosmeticModelImplCopyWithImpl<$Res>
    extends _$RecommendCosmeticModelCopyWithImpl<$Res,
        _$RecommendCosmeticModelImpl>
    implements _$$RecommendCosmeticModelImplCopyWith<$Res> {
  __$$RecommendCosmeticModelImplCopyWithImpl(
      _$RecommendCosmeticModelImpl _value,
      $Res Function(_$RecommendCosmeticModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? compatibilityScroe = null,
    Object? skintype = null,
    Object? skinTypeDescriptions = null,
    Object? keyIngredient = null,
    Object? image = null,
  }) {
    return _then(_$RecommendCosmeticModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityScroe: null == compatibilityScroe
          ? _value.compatibilityScroe
          : compatibilityScroe // ignore: cast_nullable_to_non_nullable
              as int,
      skintype: null == skintype
          ? _value.skintype
          : skintype // ignore: cast_nullable_to_non_nullable
              as String,
      skinTypeDescriptions: null == skinTypeDescriptions
          ? _value._skinTypeDescriptions
          : skinTypeDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keyIngredient: null == keyIngredient
          ? _value._keyIngredient
          : keyIngredient // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendCosmeticModelImpl implements _RecommendCosmeticModel {
  _$RecommendCosmeticModelImpl(
      {required this.name,
      required this.compatibilityScroe,
      required this.skintype,
      required final List<String> skinTypeDescriptions,
      required final List<String> keyIngredient,
      required this.image})
      : _skinTypeDescriptions = skinTypeDescriptions,
        _keyIngredient = keyIngredient;

  factory _$RecommendCosmeticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendCosmeticModelImplFromJson(json);

  @override
  final String name;
  @override
  final int compatibilityScroe;
  @override
  final String skintype;
  final List<String> _skinTypeDescriptions;
  @override
  List<String> get skinTypeDescriptions {
    if (_skinTypeDescriptions is EqualUnmodifiableListView)
      return _skinTypeDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skinTypeDescriptions);
  }

  final List<String> _keyIngredient;
  @override
  List<String> get keyIngredient {
    if (_keyIngredient is EqualUnmodifiableListView) return _keyIngredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyIngredient);
  }

  @override
  final String image;

  @override
  String toString() {
    return 'RecommendCosmeticModel(name: $name, compatibilityScroe: $compatibilityScroe, skintype: $skintype, skinTypeDescriptions: $skinTypeDescriptions, keyIngredient: $keyIngredient, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendCosmeticModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.compatibilityScroe, compatibilityScroe) ||
                other.compatibilityScroe == compatibilityScroe) &&
            (identical(other.skintype, skintype) ||
                other.skintype == skintype) &&
            const DeepCollectionEquality()
                .equals(other._skinTypeDescriptions, _skinTypeDescriptions) &&
            const DeepCollectionEquality()
                .equals(other._keyIngredient, _keyIngredient) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      compatibilityScroe,
      skintype,
      const DeepCollectionEquality().hash(_skinTypeDescriptions),
      const DeepCollectionEquality().hash(_keyIngredient),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendCosmeticModelImplCopyWith<_$RecommendCosmeticModelImpl>
      get copyWith => __$$RecommendCosmeticModelImplCopyWithImpl<
          _$RecommendCosmeticModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendCosmeticModelImplToJson(
      this,
    );
  }
}

abstract class _RecommendCosmeticModel implements RecommendCosmeticModel {
  factory _RecommendCosmeticModel(
      {required final String name,
      required final int compatibilityScroe,
      required final String skintype,
      required final List<String> skinTypeDescriptions,
      required final List<String> keyIngredient,
      required final String image}) = _$RecommendCosmeticModelImpl;

  factory _RecommendCosmeticModel.fromJson(Map<String, dynamic> json) =
      _$RecommendCosmeticModelImpl.fromJson;

  @override
  String get name;
  @override
  int get compatibilityScroe;
  @override
  String get skintype;
  @override
  List<String> get skinTypeDescriptions;
  @override
  List<String> get keyIngredient;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$RecommendCosmeticModelImplCopyWith<_$RecommendCosmeticModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
