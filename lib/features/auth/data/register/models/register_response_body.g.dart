// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseBody _$RegisterResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RegisterResponseBody(
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$RegisterResponseBodyToJson(
        RegisterResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      name: json['username'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.name,
    };
