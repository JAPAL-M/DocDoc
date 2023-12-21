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
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience."
              .text
              .sm
              .gray400
              .center
              .make()
              .px(30),
          const Spacer(),
          CustomMaterialButton(
            textButton: "Get Started",
            onPressed: () {},
          ).px20()
        ],
      ).pOnly(top: 30.h, bottom: 50.h)),
    );
  }
}
