// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skin_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SkinTypeModel _$SkinTypeModelFromJson(Map<String, dynamic> json) {
  return _SkinTypeModel.fromJson(json);
}

/// @nodoc
mixin _$SkinTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get skin_type => throw _privateConstructorUsedError;
  String get skinDescription => throw _privateConstructorUsedError;
  bool get positivity_status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkinTypeModelCopyWith<SkinTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkinTypeModelCopyWith<$Res> {
  factory $SkinTypeModelCopyWith(
          SkinTypeModel value, $Res Function(SkinTypeModel) then) =
      _$SkinTypeModelCopyWithImpl<$Res, SkinTypeModel>;
  @useResult
  $Res call(
      {int id,
      String skin_type,
      String skinDescription,
      bool positivity_status});
}

/// @nodoc
class _$SkinTypeModelCopyWithImpl<$Res, $Val extends SkinTypeModel>
    implements $SkinTypeModelCopyWith<$Res> {
  _$SkinTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? skin_type = null,
    Object? skinDescription = null,
    Object? positivity_status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skin_type: null == skin_type
          ? _value.skin_type
          : skin_type // ignore: cast_nullable_to_non_nullable
              as String,
      skinDescription: null == skinDescription
          ? _value.skinDescription
          : skinDescription // ignore: cast_nullable_to_non_nullable
              as String,
      positivity_status: null == positivity_status
          ? _value.positivity_status
          : positivity_status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkinTypeModelImplCopyWith<$Res>
    implements $SkinTypeModelCopyWith<$Res> {
  factory _$$SkinTypeModelImplCopyWith(
          _$SkinTypeModelImpl value, $Res Function(_$SkinTypeModelImpl) then) =
      __$$SkinTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String skin_type,
      String skinDescription,
      bool positivity_status});
}

/// @nodoc
class __$$SkinTypeModelImplCopyWithImpl<$Res>
    extends _$SkinTypeModelCopyWithImpl<$Res, _$SkinTypeModelImpl>
    implements _$$SkinTypeModelImplCopyWith<$Res> {
  __$$SkinTypeModelImplCopyWithImpl(
      _$SkinTypeModelImpl _value, $Res Function(_$SkinTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? skin_type = null,
    Object? skinDescription = null,
    Object? positivity_status = null,
  }) {
    return _then(_$SkinTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skin_type: null == skin_type
          ? _value.skin_type
          : skin_type // ignore: cast_nullable_to_non_nullable
              as String,
      skinDescription: null == skinDescription
          ? _value.skinDescription
          : skinDescription // ignore: cast_nullable_to_non_nullable
              as String,
      positivity_status: null == positivity_status
          ? _value.positivity_status
          : positivity_status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkinTypeModelImpl implements _SkinTypeModel {
  _$SkinTypeModelImpl(
      {required this.id,
      required this.skin_type,
      required this.skinDescription,
      required this.positivity_status});

  factory _$SkinTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkinTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String skin_type;
  @override
  final String skinDescription;
  @override
  final bool positivity_status;

  @override
  String toString() {
    return 'SkinTypeModel(id: $id, skin_type: $skin_type, skinDescription: $skinDescription, positivity_status: $positivity_status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkinTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.skin_type, skin_type) ||
                other.skin_type == skin_type) &&
            (identical(other.skinDescription, skinDescription) ||
                other.skinDescription == skinDescription) &&
            (identical(other.positivity_status, positivity_status) ||
                other.positivity_status == positivity_status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, skin_type, skinDescription, positivity_status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkinTypeModelImplCopyWith<_$SkinTypeModelImpl> get copyWith =>
      __$$SkinTypeModelImplCopyWithImpl<_$SkinTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkinTypeModelImplToJson(
      this,
    );
  }
}

abstract class _SkinTypeModel implements SkinTypeModel {
  factory _SkinTypeModel(
      {required final int id,
      required final String skin_type,
      required final String skinDescription,
      required final bool positivity_status}) = _$SkinTypeModelImpl;

  factory _SkinTypeModel.fromJson(Map<String, dynamic> json) =
      _$SkinTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get skin_type;
  @override
  String get skinDescription;
  @override
  bool get positivity_status;
  @override
  @JsonKey(ignore: true)
  _$$SkinTypeModelImplCopyWith<_$SkinTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
