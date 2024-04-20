// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EffectModel _$EffectModelFromJson(Map<String, dynamic> json) {
  return _EffectModel.fromJson(json);
}

/// @nodoc
mixin _$EffectModel {
  int get num => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EffectModelCopyWith<EffectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectModelCopyWith<$Res> {
  factory $EffectModelCopyWith(
          EffectModel value, $Res Function(EffectModel) then) =
      _$EffectModelCopyWithImpl<$Res, EffectModel>;
  @useResult
  $Res call({int num, String text});
}

/// @nodoc
class _$EffectModelCopyWithImpl<$Res, $Val extends EffectModel>
    implements $EffectModelCopyWith<$Res> {
  _$EffectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EffectModelImplCopyWith<$Res>
    implements $EffectModelCopyWith<$Res> {
  factory _$$EffectModelImplCopyWith(
          _$EffectModelImpl value, $Res Function(_$EffectModelImpl) then) =
      __$$EffectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int num, String text});
}

/// @nodoc
class __$$EffectModelImplCopyWithImpl<$Res>
    extends _$EffectModelCopyWithImpl<$Res, _$EffectModelImpl>
    implements _$$EffectModelImplCopyWith<$Res> {
  __$$EffectModelImplCopyWithImpl(
      _$EffectModelImpl _value, $Res Function(_$EffectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? text = null,
  }) {
    return _then(_$EffectModelImpl(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EffectModelImpl implements _EffectModel {
  _$EffectModelImpl({required this.num, required this.text});

  factory _$EffectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EffectModelImplFromJson(json);

  @override
  final int num;
  @override
  final String text;

  @override
  String toString() {
    return 'EffectModel(num: $num, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EffectModelImpl &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, num, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EffectModelImplCopyWith<_$EffectModelImpl> get copyWith =>
      __$$EffectModelImplCopyWithImpl<_$EffectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EffectModelImplToJson(
      this,
    );
  }
}

abstract class _EffectModel implements EffectModel {
  factory _EffectModel({required final int num, required final String text}) =
      _$EffectModelImpl;

  factory _EffectModel.fromJson(Map<String, dynamic> json) =
      _$EffectModelImpl.fromJson;

  @override
  int get num;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$EffectModelImplCopyWith<_$EffectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
