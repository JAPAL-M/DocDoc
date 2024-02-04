import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()
class LoginResponseBody {
  final String? message;
  @JsonKey(name: "data")
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponseBody({this.message,this.userData,this.code,this.status});

  factory LoginResponseBody.fromJson(Map<String,dynamic> json) => _$LoginResponseBodyFromJson(json);

}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: "username")
  final String? name;

  UserData({this.name,this.token});

  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFromJson(json);
}