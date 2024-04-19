// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientModel _$IngredientModelFromJson(Map<String, dynamic> json) {
  return _IngredientModel.fromJson(json);
}

/// @nodoc
mixin _$IngredientModel {
  String get name => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;
  List<String> get purpose => throw _privateConstructorUsedError;
  bool get preference => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  List<SkinTypeModel>? get skin_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res, IngredientModel>;
  @useResult
  $Res call(
      {String name,
      int grade,
      List<String> purpose,
      bool preference,
      List<String> features,
      List<SkinTypeModel>? skin_type});
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res, $Val extends IngredientModel>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? grade = null,
    Object? purpose = null,
    Object? preference = null,
    Object? features = null,
    Object? skin_type = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preference: null == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skin_type: freezed == skin_type
          ? _value.skin_type
          : skin_type // ignore: cast_nullable_to_non_nullable
              as List<SkinTypeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientModelImplCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$IngredientModelImplCopyWith(_$IngredientModelImpl value,
          $Res Function(_$IngredientModelImpl) then) =
      __$$IngredientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int grade,
      List<String> purpose,
      bool preference,
      List<String> features,
      List<SkinTypeModel>? skin_type});
}

/// @nodoc
class __$$IngredientModelImplCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res, _$IngredientModelImpl>
    implements _$$IngredientModelImplCopyWith<$Res> {
  __$$IngredientModelImplCopyWithImpl(
      _$IngredientModelImpl _value, $Res Function(_$IngredientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? grade = null,
    Object? purpose = null,
    Object? preference = null,
    Object? features = null,
    Object? skin_type = freezed,
  }) {
    return _then(_$IngredientModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      purpose: null == purpose
          ? _value._purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preference: null == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skin_type: freezed == skin_type
          ? _value._skin_type
          : skin_type // ignore: cast_nullable_to_non_nullable
              as List<SkinTypeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientModelImpl implements _IngredientModel {
  _$IngredientModelImpl(
      {required this.name,
      required this.grade,
      required final List<String> purpose,
      required this.preference,
      required final List<String> features,
      final List<SkinTypeModel>? skin_type})
      : _purpose = purpose,
        _features = features,
        _skin_type = skin_type;

  factory _$IngredientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientModelImplFromJson(json);

  @override
  final String name;
  @override
  final int grade;
  final List<String> _purpose;
  @override
  List<String> get purpose {
    if (_purpose is EqualUnmodifiableListView) return _purpose;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purpose);
  }

  @override
  final bool preference;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<SkinTypeModel>? _skin_type;
  @override
  List<SkinTypeModel>? get skin_type {
    final value = _skin_type;
    if (value == null) return null;
    if (_skin_type is EqualUnmodifiableListView) return _skin_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientModel(name: $name, grade: $grade, purpose: $purpose, preference: $preference, features: $features, skin_type: $skin_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            const DeepCollectionEquality().equals(other._purpose, _purpose) &&
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._skin_type, _skin_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      grade,
      const DeepCollectionEquality().hash(_purpose),
      preference,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_skin_type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientModelImplCopyWith<_$IngredientModelImpl> get copyWith =>
      __$$IngredientModelImplCopyWithImpl<_$IngredientModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientModelImplToJson(
      this,
    );
  }
}

abstract class _IngredientModel implements IngredientModel {
  factory _IngredientModel(
      {required final String name,
      required final int grade,
      required final List<String> purpose,
      required final bool preference,
      required final List<String> features,
      final List<SkinTypeModel>? skin_type}) = _$IngredientModelImpl;

  factory _IngredientModel.fromJson(Map<String, dynamic> json) =
      _$IngredientModelImpl.fromJson;

  @override
  String get name;
  @override
  int get grade;
  @override
  List<String> get purpose;
  @override
  bool get preference;
  @override
  List<String> get features;
  @override
  List<SkinTypeModel>? get skin_type;
  @override
  @JsonKey(ignore: true)
  _$$IngredientModelImplCopyWith<_$IngredientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
