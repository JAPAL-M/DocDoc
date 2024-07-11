import 'package:docdoc_app/core/networking/api_error_handler.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //Home
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(HomeModels homeModels) = HomeSuccess;
  const factory HomeState.homeError({required String error}) = HomeError;

  //Doctors
  const factory HomeState.getListDoctorsLoading() = GetListDoctorsLoading;
  const factory HomeState.getListDoctorsSuccess(List<DoctorData> doctor) =
      GetListDoctorsSuccess;
  const factory HomeState.getListDoctorsError(ErrorHandler errorHandler) =
      GetListDoctorsError;
}
