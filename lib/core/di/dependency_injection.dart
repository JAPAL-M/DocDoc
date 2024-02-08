import 'package:dio/dio.dart';
import 'package:docdoc_app/core/networking/api_service.dart';
import 'package:docdoc_app/core/networking/dio_factory.dart';
import 'package:docdoc_app/features/auth/data/login/repos/login_repo.dart';
import 'package:docdoc_app/features/auth/data/register/repos/register_repo.dart';
import 'package:docdoc_app/features/auth/logic/login_cubit/cubit/login_cubit.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getIt()));
}
