import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/home/ui/widgets/app_bar_home_screen.dart';
import 'package:docdoc_app/features/home/ui/widgets/banner_doctor_home_screen.dart';
import 'package:docdoc_app/features/home/ui/widgets/speciality_list/categories_doctor_bloct_builder.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/doctor_recommend_bloc_builder.dart';
import 'package:docdoc_app/features/home/ui/widgets/headers_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarHomeScreen(),
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BannerDoctorHomeScreen(),
                    verticalSpacing(24),
                    Headers(
                      text: 'Doctor Speciality',
                      onPressed: () {},
                    ),
                    verticalSpacing(16),
                    const CategoriesDoctorBlocBuilder(),
                    verticalSpacing(23),
                    Headers(
                      text: 'Recommendation Doctor',
                      onPressed: () {},
                    ),
                    verticalSpacing(12),
                  ],
                ),
              ),
              const DoctorRecommendedBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
