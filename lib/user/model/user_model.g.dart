// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      nickname: json['nickname'] as String,
      login_id: json['login_id'] as String,
      password: json['password'] as String?,
      birth: json['birth'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      skin_type: json['skin_type'] as String,
      skin_concerns: (json['skin_concerns'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      allergy: json['allergy'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickname': instance.nickname,
      'login_id': instance.login_id,
      'password': instance.password,
      'birth': instance.birth,
      'gender': instance.gender,
      'email': instance.email,
      'skin_type': instance.skin_type,
      'skin_concerns': instance.skin_concerns,
      'allergy': instance.allergy,
    };
