// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compare_analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompareAnalysisModel _$CompareAnalysisModelFromJson(Map<String, dynamic> json) {
  return _CompareAnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$CompareAnalysisModel {
  List<AnalysisModel> get analysisList => throw _privateConstructorUsedError;
  List<int> get ratio => throw _privateConstructorUsedError;
  String get AI_total_description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompareAnalysisModelCopyWith<CompareAnalysisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareAnalysisModelCopyWith<$Res> {
  factory $CompareAnalysisModelCopyWith(CompareAnalysisModel value,
          $Res Function(CompareAnalysisModel) then) =
      _$CompareAnalysisModelCopyWithImpl<$Res, CompareAnalysisModel>;
  @useResult
  $Res call(
      {List<AnalysisModel> analysisList,
      List<int> ratio,
      String AI_total_description});
}

/// @nodoc
class _$CompareAnalysisModelCopyWithImpl<$Res,
        $Val extends CompareAnalysisModel>
    implements $CompareAnalysisModelCopyWith<$Res> {
  _$CompareAnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
    Object? ratio = null,
    Object? AI_total_description = null,
  }) {
    return _then(_value.copyWith(
      analysisList: null == analysisList
          ? _value.analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as List<int>,
      AI_total_description: null == AI_total_description
          ? _value.AI_total_description
          : AI_total_description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompareAnalysisModelImplCopyWith<$Res>
    implements $CompareAnalysisModelCopyWith<$Res> {
  factory _$$CompareAnalysisModelImplCopyWith(_$CompareAnalysisModelImpl value,
          $Res Function(_$CompareAnalysisModelImpl) then) =
      __$$CompareAnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AnalysisModel> analysisList,
      List<int> ratio,
      String AI_total_description});
}

/// @nodoc
class __$$CompareAnalysisModelImplCopyWithImpl<$Res>
    extends _$CompareAnalysisModelCopyWithImpl<$Res, _$CompareAnalysisModelImpl>
    implements _$$CompareAnalysisModelImplCopyWith<$Res> {
  __$$CompareAnalysisModelImplCopyWithImpl(_$CompareAnalysisModelImpl _value,
      $Res Function(_$CompareAnalysisModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisList = null,
    Object? ratio = null,
    Object? AI_total_description = null,
  }) {
    return _then(_$CompareAnalysisModelImpl(
      analysisList: null == analysisList
          ? _value._analysisList
          : analysisList // ignore: cast_nullable_to_non_nullable
              as List<AnalysisModel>,
      ratio: null == ratio
          ? _value._ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as List<int>,
      AI_total_description: null == AI_total_description
          ? _value.AI_total_description
          : AI_total_description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompareAnalysisModelImpl implements _CompareAnalysisModel {
  _$CompareAnalysisModelImpl(
      {required final List<AnalysisModel> analysisList,
      required final List<int> ratio,
      required this.AI_total_description})
      : _analysisList = analysisList,
        _ratio = ratio;

  factory _$CompareAnalysisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompareAnalysisModelImplFromJson(json);

  final List<AnalysisModel> _analysisList;
  @override
  List<AnalysisModel> get analysisList {
    if (_analysisList is EqualUnmodifiableListView) return _analysisList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysisList);
  }

  final List<int> _ratio;
  @override
  List<int> get ratio {
    if (_ratio is EqualUnmodifiableListView) return _ratio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratio);
  }

  @override
  final String AI_total_description;

  @override
  String toString() {
    return 'CompareAnalysisModel(analysisList: $analysisList, ratio: $ratio, AI_total_description: $AI_total_description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareAnalysisModelImpl &&
            const DeepCollectionEquality()
                .equals(other._analysisList, _analysisList) &&
            const DeepCollectionEquality().equals(other._ratio, _ratio) &&
            (identical(other.AI_total_description, AI_total_description) ||
                other.AI_total_description == AI_total_description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_analysisList),
      const DeepCollectionEquality().hash(_ratio),
      AI_total_description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompareAnalysisModelImplCopyWith<_$CompareAnalysisModelImpl>
      get copyWith =>
          __$$CompareAnalysisModelImplCopyWithImpl<_$CompareAnalysisModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompareAnalysisModelImplToJson(
      this,
    );
  }
}

abstract class _CompareAnalysisModel implements CompareAnalysisModel {
  factory _CompareAnalysisModel(
      {required final List<AnalysisModel> analysisList,
      required final List<int> ratio,
      required final String AI_total_description}) = _$CompareAnalysisModelImpl;

  factory _CompareAnalysisModel.fromJson(Map<String, dynamic> json) =
      _$CompareAnalysisModelImpl.fromJson;

  @override
  List<AnalysisModel> get analysisList;
  @override
  List<int> get ratio;
  @override
  String get AI_total_description;
  @override
  @JsonKey(ignore: true)
  _$$CompareAnalysisModelImplCopyWith<_$CompareAnalysisModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
