// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvaluationModel _$EvaluationModelFromJson(Map<String, dynamic> json) {
  return _EvaluationModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationModel {
  int get analysis_id => throw _privateConstructorUsedError;
  int get analysis_score => throw _privateConstructorUsedError;
  int get cosmetic_score => throw _privateConstructorUsedError;
  int? get cosmetic_score2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationModelCopyWith<EvaluationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationModelCopyWith<$Res> {
  factory $EvaluationModelCopyWith(
          EvaluationModel value, $Res Function(EvaluationModel) then) =
      _$EvaluationModelCopyWithImpl<$Res, EvaluationModel>;
  @useResult
  $Res call(
      {int analysis_id,
      int analysis_score,
      int cosmetic_score,
      int? cosmetic_score2});
}

/// @nodoc
class _$EvaluationModelCopyWithImpl<$Res, $Val extends EvaluationModel>
    implements $EvaluationModelCopyWith<$Res> {
  _$EvaluationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis_id = null,
    Object? analysis_score = null,
    Object? cosmetic_score = null,
    Object? cosmetic_score2 = freezed,
  }) {
    return _then(_value.copyWith(
      analysis_id: null == analysis_id
          ? _value.analysis_id
          : analysis_id // ignore: cast_nullable_to_non_nullable
              as int,
      analysis_score: null == analysis_score
          ? _value.analysis_score
          : analysis_score // ignore: cast_nullable_to_non_nullable
              as int,
      cosmetic_score: null == cosmetic_score
          ? _value.cosmetic_score
          : cosmetic_score // ignore: cast_nullable_to_non_nullable
              as int,
      cosmetic_score2: freezed == cosmetic_score2
          ? _value.cosmetic_score2
          : cosmetic_score2 // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvaluationModelImplCopyWith<$Res>
    implements $EvaluationModelCopyWith<$Res> {
  factory _$$EvaluationModelImplCopyWith(_$EvaluationModelImpl value,
          $Res Function(_$EvaluationModelImpl) then) =
      __$$EvaluationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int analysis_id,
      int analysis_score,
      int cosmetic_score,
      int? cosmetic_score2});
}

/// @nodoc
class __$$EvaluationModelImplCopyWithImpl<$Res>
    extends _$EvaluationModelCopyWithImpl<$Res, _$EvaluationModelImpl>
    implements _$$EvaluationModelImplCopyWith<$Res> {
  __$$EvaluationModelImplCopyWithImpl(
      _$EvaluationModelImpl _value, $Res Function(_$EvaluationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis_id = null,
    Object? analysis_score = null,
    Object? cosmetic_score = null,
    Object? cosmetic_score2 = freezed,
  }) {
    return _then(_$EvaluationModelImpl(
      analysis_id: null == analysis_id
          ? _value.analysis_id
          : analysis_id // ignore: cast_nullable_to_non_nullable
              as int,
      analysis_score: null == analysis_score
          ? _value.analysis_score
          : analysis_score // ignore: cast_nullable_to_non_nullable
              as int,
      cosmetic_score: null == cosmetic_score
          ? _value.cosmetic_score
          : cosmetic_score // ignore: cast_nullable_to_non_nullable
              as int,
      cosmetic_score2: freezed == cosmetic_score2
          ? _value.cosmetic_score2
          : cosmetic_score2 // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvaluationModelImpl implements _EvaluationModel {
  _$EvaluationModelImpl(
      {required this.analysis_id,
      required this.analysis_score,
      required this.cosmetic_score,
      this.cosmetic_score2});

  factory _$EvaluationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvaluationModelImplFromJson(json);

  @override
  final int analysis_id;
  @override
  final int analysis_score;
  @override
  final int cosmetic_score;
  @override
  final int? cosmetic_score2;

  @override
  String toString() {
    return 'EvaluationModel(analysis_id: $analysis_id, analysis_score: $analysis_score, cosmetic_score: $cosmetic_score, cosmetic_score2: $cosmetic_score2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluationModelImpl &&
            (identical(other.analysis_id, analysis_id) ||
                other.analysis_id == analysis_id) &&
            (identical(other.analysis_score, analysis_score) ||
                other.analysis_score == analysis_score) &&
            (identical(other.cosmetic_score, cosmetic_score) ||
                other.cosmetic_score == cosmetic_score) &&
            (identical(other.cosmetic_score2, cosmetic_score2) ||
                other.cosmetic_score2 == cosmetic_score2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, analysis_id, analysis_score,
      cosmetic_score, cosmetic_score2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluationModelImplCopyWith<_$EvaluationModelImpl> get copyWith =>
      __$$EvaluationModelImplCopyWithImpl<_$EvaluationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvaluationModelImplToJson(
      this,
    );
  }
}

abstract class _EvaluationModel implements EvaluationModel {
  factory _EvaluationModel(
      {required final int analysis_id,
      required final int analysis_score,
      required final int cosmetic_score,
      final int? cosmetic_score2}) = _$EvaluationModelImpl;

  factory _EvaluationModel.fromJson(Map<String, dynamic> json) =
      _$EvaluationModelImpl.fromJson;

  @override
  int get analysis_id;
  @override
  int get analysis_score;
  @override
  int get cosmetic_score;
  @override
  int? get cosmetic_score2;
  @override
  @JsonKey(ignore: true)
  _$$EvaluationModelImplCopyWith<_$EvaluationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
