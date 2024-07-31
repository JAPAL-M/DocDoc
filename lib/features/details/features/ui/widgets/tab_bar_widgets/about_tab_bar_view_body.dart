import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';

class AboutTabBarViewBody extends StatelessWidget {
  const AboutTabBarViewBody({
    super.key,
    required this.doctorData,
  });
  final DoctorData doctorData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          doctorData.description!,
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'Working Time',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          '${doctorData.startTime!} - ${doctorData.endTime!}',
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'Phone Number',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          doctorData.phone!,
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'City',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          doctorData.city!.name!,
          style: TextStyles.font14DarkBlueMedium,
        ),
        verticalSpacing(4),
        Text(
          doctorData.degree!,
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
