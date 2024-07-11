import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RaitingDoctor extends StatelessWidget {
  const RaitingDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Iconsax.star1,
          color: ColorsManager.gold,
        ),
        horizantialSpacing(4),
        Text(
          '4.8 (4,279 reviews)',
          style: TextStyles.font11GrayRegular,
        )
      ],
    );
  }
}
