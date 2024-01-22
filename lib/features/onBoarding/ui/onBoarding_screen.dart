import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/features/onBoarding/ui/widgets/doc_logo_and_name.dart';
import 'package:docdoc_app/features/onBoarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const DocLogoAndName(),
          const DoctorImageAndText().pOnly(top: 30.h),
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: TextStyles.font11GrayRegular,
            textAlign: TextAlign.center,
          ).px(30),
          const Spacer(),
          CustomMaterialButton(
            textButton: "Get Started",
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ).px20()
        ],
      ).pOnly(top: 30.h, bottom: 50.h)),
    );
  }
}
