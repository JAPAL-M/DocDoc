import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/details_screen_app_bar.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/doctor_details_items.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/about_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/location_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/reviews_tab_bar_view_body.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/tab_bar_details_screen.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.doctorData,
  });

  final DoctorData doctorData;
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
          onPressed: () {
            context.pushNamed(Routes.appointmentScreen,
                arguments: widget.doctorData);
          }).p(24),
      body: SafeArea(
        child: Column(
          children: [
            DetailsScreenAppBar(
              doctorData: widget.doctorData,
            ),
            verticalSpacing(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      DoctorDetailsItems(doctorData: widget.doctorData),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.message,
                            color: ColorsManager.mainBlue),
                      ),
                    ],
                  ),
                  verticalSpacing(24),
                  TabBarDetailsScreen(tabController: _tabController),
                  verticalSpacing(32),
                  TabBarView(
                    controller: _tabController,
                    children: [
                      AboutTabBarViewBody(doctorData: widget.doctorData),
                      LocationTabBarViewBody(doctorData: widget.doctorData),
                      const ReviewsTabBarViewBody(),
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
