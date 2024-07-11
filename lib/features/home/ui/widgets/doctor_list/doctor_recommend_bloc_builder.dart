import 'package:docdoc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc_app/features/home/logic/cubit/home_state.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/doctor_recommended_listView.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/doctors_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorRecommendedBlocBuilder extends StatelessWidget {
  const DoctorRecommendedBlocBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetListDoctorsLoading ||
          current is GetListDoctorsSuccess ||
          current is GetListDoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          getListDoctorsLoading: () {
            return const DoctorsShimmerLoading();
          },
          getListDoctorsSuccess: (doctor) {
            return DoctorRecommendedListView(doctorData: doctor);
          },
          getListDoctorsError: (errorHandler) => SliverToBoxAdapter(
            child: Text(errorHandler.apiErrorModel.message!),
          ),
          orElse: () => const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
