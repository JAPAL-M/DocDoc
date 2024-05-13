import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/home/ui/widgets/app_bar_home_screen.dart';
import 'package:docdoc_app/features/home/ui/widgets/banner_doctor_home_screen.dart';
import 'package:docdoc_app/features/home/ui/widgets/categories_doctor_listView.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_recommended_listView.dart';
import 'package:docdoc_app/features/home/ui/widgets/headers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarHomeScreen(),
        CustomScrollView(
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
                  const CategoriesDoctorListView().h(86.h),
                  verticalSpacing(23),
                  Headers(
                    text: 'Recommendation Doctor',
                    onPressed: () {},
                  ),
                  verticalSpacing(12),
                ],
              ),
            ),
            const DoctorRecommendedListView(),
          ],
        ).expand(),
      ],
    );
  }
}
