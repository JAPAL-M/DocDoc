import 'package:docdoc_app/core/networking/api_error_handler.dart';
import 'package:docdoc_app/core/networking/api_result.dart';
import 'package:docdoc_app/features/home/data/apis/home_api_service.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';

class HomeRepos {
  final HomeApiService _homeApiService;

  HomeRepos(this._homeApiService);

  Future<ApiResult<HomeModels>> getHomeData() async {
    try {
      final response = await _homeApiService.getHome();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
