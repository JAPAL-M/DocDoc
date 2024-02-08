import 'package:json_annotation/json_annotation.dart';
part 'register_response_body.g.dart';

@JsonSerializable()
class RegisterResponseBody {
  final String? message;
  @JsonKey(name: "data")
  final UserData? userData;
  final bool? status;
  final int? code;

  RegisterResponseBody({this.message, this.userData, this.code, this.status});

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: "username")
  final String? name;

  UserData({this.name, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
