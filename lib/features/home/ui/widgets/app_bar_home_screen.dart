import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Omar!",
              style: TextStyles.font18BlackBold,
            ),
            verticalSpacing(2),
            Text(
              "How Are you Today?",
              style: TextStyles.font11GrayRegular,
            )
          ],
        ),
        const Icon(Iconsax.notification)
            .circle(backgroundColor: ColorsManager.lighterGray, radius: 48)
      ],
    );
  }
}
