import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/details_screen_app_bar.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/doctor_details_items.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/about_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/location_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/reviews_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/tab_bar_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomMaterialButton(
              textButton: 'Make An Appointment',
              minWight: double.infinity,
              onPressed: () {})
          .p(24),
      body: SafeArea(
        child: Column(
          children: [
            const DetailsScreenAppBar(),
            verticalSpacing(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  const DoctorDetailsItems(),
                  verticalSpacing(24),
                  TabBarDetailsScreen(tabController: _tabController),
                  verticalSpacing(32),
                  TabBarView(
                    controller: _tabController,
                    children: const [
                      AboutTabBarViewBody(),
                      LocationTabBarViewBody(),
                      ReviewsTabBarViewBody(),
                    ],
                  ).h(context.screenHeight * 0.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
