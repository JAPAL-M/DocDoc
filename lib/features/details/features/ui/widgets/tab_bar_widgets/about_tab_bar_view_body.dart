import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AboutTabBarViewBody extends StatelessWidget {
  const AboutTabBarViewBody({
    super.key,
  });

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
          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'Working Time',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          'Monday - Friday, 08.00 AM - 20.00 PM',
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'STR',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          '4726482464',
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpacing(24),
        Text(
          'Pengalaman Praktik',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          'RSPAD Gatot Soebroto',
          style: TextStyles.font14DarkBlueMedium,
        ),
        verticalSpacing(4),
        Text(
          '2017 - sekarang',
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
