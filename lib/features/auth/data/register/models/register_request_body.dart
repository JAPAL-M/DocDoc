import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String name;
  final String phone;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final int gender;

  RegisterRequestBody(
      {required this.email,
      required this.password,
      required this.name,
      required this.phone,
      required this.passwordConfirmation,
      required this.gender});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
