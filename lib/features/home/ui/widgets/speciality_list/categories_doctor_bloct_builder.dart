import 'package:docdoc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc_app/features/home/logic/cubit/home_state.dart';
import 'package:docdoc_app/features/home/ui/widgets/speciality_list/categories_doctor_listView.dart';
import 'package:docdoc_app/features/home/ui/widgets/speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoriesDoctorBlocBuilder extends StatelessWidget {
  const CategoriesDoctorBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeLoading ||
          current is HomeSuccess ||
          current is HomeError,
      builder: (context, state) {
        return state.maybeWhen(
          homeLoading: () {
            return const SpecialityShimmerLoading();
          },
          homeSuccess: (homeModels) {
            return CategoriesDoctorListView(homeModels: homeModels).h(86.h);
          },
          homeError: (error) => Text(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

/// shimmer loading for specializations and doctors

