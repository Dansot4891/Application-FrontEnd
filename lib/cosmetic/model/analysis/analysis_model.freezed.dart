// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalysisModel _$AnalysisModelFromJson(Map<String, dynamic> json) {
  return _AnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$AnalysisModel {
  String get ai_description => throw _privateConstructorUsedError; // AI 분석 코멘트
  int get score => throw _privateConstructorUsedError; // AI 사용자와의 적합도
  int get type_posit => throw _privateConstructorUsedError; // 피부타입에 대한 긍정 성분 기준
  int get type_nega => throw _privateConstructorUsedError; // 피부타입에 대한 부정 성분 기준
  int get type_danger =>
      throw _privateConstructorUsedError; // 피부타입에 대한 주의 성분 기준
  int get allArg_danger => throw _privateConstructorUsedError; // 알레르기 위험 성분 개수
  int get danger => throw _privateConstructorUsedError; // 의약처 위험 성분 개수
  List<IngredientModel> get ingredient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalysisModelCopyWith<AnalysisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisModelCopyWith<$Res> {
  factory $AnalysisModelCopyWith(
          AnalysisModel value, $Res Function(AnalysisModel) then) =
      _$AnalysisModelCopyWithImpl<$Res, AnalysisModel>;
  @useResult
  $Res call(
      {String ai_description,
      int score,
      int type_posit,
      int type_nega,
      int type_danger,
      int allArg_danger,
      int danger,
      List<IngredientModel> ingredient});
}

/// @nodoc
class _$AnalysisModelCopyWithImpl<$Res, $Val extends AnalysisModel>
    implements $AnalysisModelCopyWith<$Res> {
  _$AnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ai_description = null,
    Object? score = null,
    Object? type_posit = null,
    Object? type_nega = null,
    Object? type_danger = null,
    Object? allArg_danger = null,
    Object? danger = null,
    Object? ingredient = null,
  }) {
    return _then(_value.copyWith(
      ai_description: null == ai_description
          ? _value.ai_description
          : ai_description // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      type_posit: null == type_posit
          ? _value.type_posit
          : type_posit // ignore: cast_nullable_to_non_nullable
              as int,
      type_nega: null == type_nega
          ? _value.type_nega
          : type_nega // ignore: cast_nullable_to_non_nullable
              as int,
      type_danger: null == type_danger
          ? _value.type_danger
          : type_danger // ignore: cast_nullable_to_non_nullable
              as int,
      allArg_danger: null == allArg_danger
          ? _value.allArg_danger
          : allArg_danger // ignore: cast_nullable_to_non_nullable
              as int,
      danger: null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as int,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalysisModelImplCopyWith<$Res>
    implements $AnalysisModelCopyWith<$Res> {
  factory _$$AnalysisModelImplCopyWith(
          _$AnalysisModelImpl value, $Res Function(_$AnalysisModelImpl) then) =
      __$$AnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ai_description,
      int score,
      int type_posit,
      int type_nega,
      int type_danger,
      int allArg_danger,
      int danger,
      List<IngredientModel> ingredient});
}

/// @nodoc
class __$$AnalysisModelImplCopyWithImpl<$Res>
    extends _$AnalysisModelCopyWithImpl<$Res, _$AnalysisModelImpl>
    implements _$$AnalysisModelImplCopyWith<$Res> {
  __$$AnalysisModelImplCopyWithImpl(
      _$AnalysisModelImpl _value, $Res Function(_$AnalysisModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ai_description = null,
    Object? score = null,
    Object? type_posit = null,
    Object? type_nega = null,
    Object? type_danger = null,
    Object? allArg_danger = null,
    Object? danger = null,
    Object? ingredient = null,
  }) {
    return _then(_$AnalysisModelImpl(
      ai_description: null == ai_description
          ? _value.ai_description
          : ai_description // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      type_posit: null == type_posit
          ? _value.type_posit
          : type_posit // ignore: cast_nullable_to_non_nullable
              as int,
      type_nega: null == type_nega
          ? _value.type_nega
          : type_nega // ignore: cast_nullable_to_non_nullable
              as int,
      type_danger: null == type_danger
          ? _value.type_danger
          : type_danger // ignore: cast_nullable_to_non_nullable
              as int,
      allArg_danger: null == allArg_danger
          ? _value.allArg_danger
          : allArg_danger // ignore: cast_nullable_to_non_nullable
              as int,
      danger: null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as int,
      ingredient: null == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalysisModelImpl implements _AnalysisModel {
  _$AnalysisModelImpl(
      {required this.ai_description,
      required this.score,
      required this.type_posit,
      required this.type_nega,
      required this.type_danger,
      required this.allArg_danger,
      required this.danger,
      required final List<IngredientModel> ingredient})
      : _ingredient = ingredient;

  factory _$AnalysisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisModelImplFromJson(json);

  @override
  final String ai_description;
// AI 분석 코멘트
  @override
  final int score;
// AI 사용자와의 적합도
  @override
  final int type_posit;
// 피부타입에 대한 긍정 성분 기준
  @override
  final int type_nega;
// 피부타입에 대한 부정 성분 기준
  @override
  final int type_danger;
// 피부타입에 대한 주의 성분 기준
  @override
  final int allArg_danger;
// 알레르기 위험 성분 개수
  @override
  final int danger;
// 의약처 위험 성분 개수
  final List<IngredientModel> _ingredient;
// 의약처 위험 성분 개수
  @override
  List<IngredientModel> get ingredient {
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredient);
  }

  @override
  String toString() {
    return 'AnalysisModel(ai_description: $ai_description, score: $score, type_posit: $type_posit, type_nega: $type_nega, type_danger: $type_danger, allArg_danger: $allArg_danger, danger: $danger, ingredient: $ingredient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisModelImpl &&
            (identical(other.ai_description, ai_description) ||
                other.ai_description == ai_description) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.type_posit, type_posit) ||
                other.type_posit == type_posit) &&
            (identical(other.type_nega, type_nega) ||
                other.type_nega == type_nega) &&
            (identical(other.type_danger, type_danger) ||
                other.type_danger == type_danger) &&
            (identical(other.allArg_danger, allArg_danger) ||
                other.allArg_danger == allArg_danger) &&
            (identical(other.danger, danger) || other.danger == danger) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ai_description,
      score,
      type_posit,
      type_nega,
      type_danger,
      allArg_danger,
      danger,
      const DeepCollectionEquality().hash(_ingredient));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisModelImplCopyWith<_$AnalysisModelImpl> get copyWith =>
      __$$AnalysisModelImplCopyWithImpl<_$AnalysisModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisModelImplToJson(
      this,
    );
  }
}

abstract class _AnalysisModel implements AnalysisModel {
  factory _AnalysisModel(
      {required final String ai_description,
      required final int score,
      required final int type_posit,
      required final int type_nega,
      required final int type_danger,
      required final int allArg_danger,
      required final int danger,
      required final List<IngredientModel> ingredient}) = _$AnalysisModelImpl;

  factory _AnalysisModel.fromJson(Map<String, dynamic> json) =
      _$AnalysisModelImpl.fromJson;

  @override
  String get ai_description;
  @override // AI 분석 코멘트
  int get score;
  @override // AI 사용자와의 적합도
  int get type_posit;
  @override // 피부타입에 대한 긍정 성분 기준
  int get type_nega;
  @override // 피부타입에 대한 부정 성분 기준
  int get type_danger;
  @override // 피부타입에 대한 주의 성분 기준
  int get allArg_danger;
  @override // 알레르기 위험 성분 개수
  int get danger;
  @override // 의약처 위험 성분 개수
  List<IngredientModel> get ingredient;
  @override
  @JsonKey(ignore: true)
  _$$AnalysisModelImplCopyWith<_$AnalysisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
