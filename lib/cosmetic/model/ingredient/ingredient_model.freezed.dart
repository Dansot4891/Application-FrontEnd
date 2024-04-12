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
  int get ingredients_id => throw _privateConstructorUsedError;
  String get ingredient_name => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;
  bool get bookmark => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String get function => throw _privateConstructorUsedError;

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
      {int ingredients_id,
      String ingredient_name,
      int grade,
      bool bookmark,
      String purpose,
      String function});
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
    Object? ingredients_id = null,
    Object? ingredient_name = null,
    Object? grade = null,
    Object? bookmark = null,
    Object? purpose = null,
    Object? function = null,
  }) {
    return _then(_value.copyWith(
      ingredients_id: null == ingredients_id
          ? _value.ingredients_id
          : ingredients_id // ignore: cast_nullable_to_non_nullable
              as int,
      ingredient_name: null == ingredient_name
          ? _value.ingredient_name
          : ingredient_name // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int ingredients_id,
      String ingredient_name,
      int grade,
      bool bookmark,
      String purpose,
      String function});
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
    Object? ingredients_id = null,
    Object? ingredient_name = null,
    Object? grade = null,
    Object? bookmark = null,
    Object? purpose = null,
    Object? function = null,
  }) {
    return _then(_$IngredientModelImpl(
      null == ingredients_id
          ? _value.ingredients_id
          : ingredients_id // ignore: cast_nullable_to_non_nullable
              as int,
      null == ingredient_name
          ? _value.ingredient_name
          : ingredient_name // ignore: cast_nullable_to_non_nullable
              as String,
      null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientModelImpl implements _IngredientModel {
  _$IngredientModelImpl(this.ingredients_id, this.ingredient_name, this.grade,
      this.bookmark, this.purpose, this.function);

  factory _$IngredientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientModelImplFromJson(json);

  @override
  final int ingredients_id;
  @override
  final String ingredient_name;
  @override
  final int grade;
  @override
  final bool bookmark;
  @override
  final String purpose;
  @override
  final String function;

  @override
  String toString() {
    return 'IngredientModel(ingredients_id: $ingredients_id, ingredient_name: $ingredient_name, grade: $grade, bookmark: $bookmark, purpose: $purpose, function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientModelImpl &&
            (identical(other.ingredients_id, ingredients_id) ||
                other.ingredients_id == ingredients_id) &&
            (identical(other.ingredient_name, ingredient_name) ||
                other.ingredient_name == ingredient_name) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.function, function) ||
                other.function == function));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ingredients_id, ingredient_name,
      grade, bookmark, purpose, function);

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
      final int ingredients_id,
      final String ingredient_name,
      final int grade,
      final bool bookmark,
      final String purpose,
      final String function) = _$IngredientModelImpl;

  factory _IngredientModel.fromJson(Map<String, dynamic> json) =
      _$IngredientModelImpl.fromJson;

  @override
  int get ingredients_id;
  @override
  String get ingredient_name;
  @override
  int get grade;
  @override
  bool get bookmark;
  @override
  String get purpose;
  @override
  String get function;
  @override
  @JsonKey(ignore: true)
  _$$IngredientModelImplCopyWith<_$IngredientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
