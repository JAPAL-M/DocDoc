import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class LocationTabBarViewBody extends StatelessWidget {
  const LocationTabBarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Practice Place',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(12),
        Text(
          'Cairo, Egypt',
          style: TextStyles.font14GrayRegular,
        )
      ],
    );
  }
}
