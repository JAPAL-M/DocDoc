import 'package:docdoc_app/core/networking/api_error_handler.dart';
import 'package:docdoc_app/core/networking/api_result.dart';
import 'package:docdoc_app/core/networking/api_service.dart';
import 'package:docdoc_app/features/auth/data/register/models/register_request_body.dart';
import 'package:docdoc_app/features/auth/data/register/models/register_response_body.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponseBody>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
