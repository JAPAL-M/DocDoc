import 'package:dio/dio.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.home)
  Future<HomeModels> getHome();
}
