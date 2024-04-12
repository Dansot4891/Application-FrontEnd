// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'QandA_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QandAModel _$QandAModelFromJson(Map<String, dynamic> json) {
  return _QandAModel.fromJson(json);
}

/// @nodoc
mixin _$QandAModel {
  String get qna_id => throw _privateConstructorUsedError;
  String get qna_subject => throw _privateConstructorUsedError;
  String get qna_content => throw _privateConstructorUsedError;
  bool get answer_status => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QandAModelCopyWith<QandAModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QandAModelCopyWith<$Res> {
  factory $QandAModelCopyWith(
          QandAModel value, $Res Function(QandAModel) then) =
      _$QandAModelCopyWithImpl<$Res, QandAModel>;
  @useResult
  $Res call(
      {String qna_id,
      String qna_subject,
      String qna_content,
      bool answer_status,
      String answer});
}

/// @nodoc
class _$QandAModelCopyWithImpl<$Res, $Val extends QandAModel>
    implements $QandAModelCopyWith<$Res> {
  _$QandAModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qna_id = null,
    Object? qna_subject = null,
    Object? qna_content = null,
    Object? answer_status = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      qna_id: null == qna_id
          ? _value.qna_id
          : qna_id // ignore: cast_nullable_to_non_nullable
              as String,
      qna_subject: null == qna_subject
          ? _value.qna_subject
          : qna_subject // ignore: cast_nullable_to_non_nullable
              as String,
      qna_content: null == qna_content
          ? _value.qna_content
          : qna_content // ignore: cast_nullable_to_non_nullable
              as String,
      answer_status: null == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as bool,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QandAModelImplCopyWith<$Res>
    implements $QandAModelCopyWith<$Res> {
  factory _$$QandAModelImplCopyWith(
          _$QandAModelImpl value, $Res Function(_$QandAModelImpl) then) =
      __$$QandAModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String qna_id,
      String qna_subject,
      String qna_content,
      bool answer_status,
      String answer});
}

/// @nodoc
class __$$QandAModelImplCopyWithImpl<$Res>
    extends _$QandAModelCopyWithImpl<$Res, _$QandAModelImpl>
    implements _$$QandAModelImplCopyWith<$Res> {
  __$$QandAModelImplCopyWithImpl(
      _$QandAModelImpl _value, $Res Function(_$QandAModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qna_id = null,
    Object? qna_subject = null,
    Object? qna_content = null,
    Object? answer_status = null,
    Object? answer = null,
  }) {
    return _then(_$QandAModelImpl(
      null == qna_id
          ? _value.qna_id
          : qna_id // ignore: cast_nullable_to_non_nullable
              as String,
      null == qna_subject
          ? _value.qna_subject
          : qna_subject // ignore: cast_nullable_to_non_nullable
              as String,
      null == qna_content
          ? _value.qna_content
          : qna_content // ignore: cast_nullable_to_non_nullable
              as String,
      null == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as bool,
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QandAModelImpl implements _QandAModel {
  _$QandAModelImpl(this.qna_id, this.qna_subject, this.qna_content,
      this.answer_status, this.answer);

  factory _$QandAModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QandAModelImplFromJson(json);

  @override
  final String qna_id;
  @override
  final String qna_subject;
  @override
  final String qna_content;
  @override
  final bool answer_status;
  @override
  final String answer;

  @override
  String toString() {
    return 'QandAModel(qna_id: $qna_id, qna_subject: $qna_subject, qna_content: $qna_content, answer_status: $answer_status, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QandAModelImpl &&
            (identical(other.qna_id, qna_id) || other.qna_id == qna_id) &&
            (identical(other.qna_subject, qna_subject) ||
                other.qna_subject == qna_subject) &&
            (identical(other.qna_content, qna_content) ||
                other.qna_content == qna_content) &&
            (identical(other.answer_status, answer_status) ||
                other.answer_status == answer_status) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, qna_id, qna_subject, qna_content, answer_status, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QandAModelImplCopyWith<_$QandAModelImpl> get copyWith =>
      __$$QandAModelImplCopyWithImpl<_$QandAModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QandAModelImplToJson(
      this,
    );
  }
}

abstract class _QandAModel implements QandAModel {
  factory _QandAModel(
      final String qna_id,
      final String qna_subject,
      final String qna_content,
      final bool answer_status,
      final String answer) = _$QandAModelImpl;

  factory _QandAModel.fromJson(Map<String, dynamic> json) =
      _$QandAModelImpl.fromJson;

  @override
  String get qna_id;
  @override
  String get qna_subject;
  @override
  String get qna_content;
  @override
  bool get answer_status;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$QandAModelImplCopyWith<_$QandAModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
