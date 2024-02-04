import 'package:dio/dio.dart';
import 'package:docdoc_app/core/networking/api_constants.dart';
import 'package:docdoc_app/features/auth/data/login/models/login_request_body.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/data/login/models/login_response_body.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
      @Body() LoginRequestBody loginRequestBody,
      );
}