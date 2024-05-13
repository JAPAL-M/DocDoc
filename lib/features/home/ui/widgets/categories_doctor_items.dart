import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CategoriesDoctorItems extends StatelessWidget {
  const CategoriesDoctorItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: ColorsManager.semiLighterGray,
          radius: 30,
          child: Image.asset('assets/images/doc_cat.png'),
        ),
        verticalSpacing(10),
        Text(
          'General',
          style: TextStyles.font12DarkBlueRegular,
        )
      ],
    );
  }
}
