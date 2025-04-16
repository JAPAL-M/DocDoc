import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/networking/api_error_handler.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:docdoc_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc_app/features/home/data/repos/home_repos.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos _homeRepos;
  HomeCubit(this._homeRepos) : super(const HomeState.initial());

  List<HomeData> homeData = [];

  void getHomeData() async {
    emit(const HomeState.homeLoading());
    final response = await _homeRepos.getHomeData();
    response.when(success: (homeModels) {
      homeData = homeModels.data;
      getListDoctors(id: homeData.first.id!);
      emit(HomeState.homeSuccess(homeModels));
    }, failure: (error) {
      emit(HomeState.homeError(
          error: error.apiErrorModel.message ?? 'Default Error.'));
    });
  }

  void getListDoctors({required String id}) {
    emit(const HomeState.getListDoctorsLoading());
    List<DoctorData> doctors = getDoctorsListBySpecializationId(id);

    if (!doctors.isNullOrEmpty()) {
      emit(HomeState.getListDoctorsSuccess(doctors));
    } else {
      emit(HomeState.getListDoctorsError(
          ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return homeData
        .firstWhere((specialization) => specialization.id == specializationId)
        .doctors;
  }
}
