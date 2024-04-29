// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBotModel _$ChatBotModelFromJson(Map<String, dynamic> json) {
  return _ChatBotModel.fromJson(json);
}

/// @nodoc
mixin _$ChatBotModel {
  int get id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatBotModelCopyWith<ChatBotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBotModelCopyWith<$Res> {
  factory $ChatBotModelCopyWith(
          ChatBotModel value, $Res Function(ChatBotModel) then) =
      _$ChatBotModelCopyWithImpl<$Res, ChatBotModel>;
  @useResult
  $Res call({int id, String comment, String type});
}

/// @nodoc
class _$ChatBotModelCopyWithImpl<$Res, $Val extends ChatBotModel>
    implements $ChatBotModelCopyWith<$Res> {
  _$ChatBotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBotModelImplCopyWith<$Res>
    implements $ChatBotModelCopyWith<$Res> {
  factory _$$ChatBotModelImplCopyWith(
          _$ChatBotModelImpl value, $Res Function(_$ChatBotModelImpl) then) =
      __$$ChatBotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String comment, String type});
}

/// @nodoc
class __$$ChatBotModelImplCopyWithImpl<$Res>
    extends _$ChatBotModelCopyWithImpl<$Res, _$ChatBotModelImpl>
    implements _$$ChatBotModelImplCopyWith<$Res> {
  __$$ChatBotModelImplCopyWithImpl(
      _$ChatBotModelImpl _value, $Res Function(_$ChatBotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? type = null,
  }) {
    return _then(_$ChatBotModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBotModelImpl implements _ChatBotModel {
  _$ChatBotModelImpl(
      {required this.id, required this.comment, this.type = "ai"});

  factory _$ChatBotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBotModelImplFromJson(json);

  @override
  final int id;
  @override
  final String comment;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'ChatBotModel(id: $id, comment: $comment, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBotModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, comment, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBotModelImplCopyWith<_$ChatBotModelImpl> get copyWith =>
      __$$ChatBotModelImplCopyWithImpl<_$ChatBotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBotModelImplToJson(
      this,
    );
  }
}

abstract class _ChatBotModel implements ChatBotModel {
  factory _ChatBotModel(
      {required final int id,
      required final String comment,
      final String type}) = _$ChatBotModelImpl;

  factory _ChatBotModel.fromJson(Map<String, dynamic> json) =
      _$ChatBotModelImpl.fromJson;

  @override
  int get id;
  @override
  String get comment;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ChatBotModelImplCopyWith<_$ChatBotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
