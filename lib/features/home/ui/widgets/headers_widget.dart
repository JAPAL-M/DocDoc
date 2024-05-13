import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.font18BlackBold
              .copyWith(fontWeight: FontWeightHelper.semiBold),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              'See All',
              style: TextStyles.font12DarkBlueRegular
                  .copyWith(color: ColorsManager.mainBlue),
            ))
      ],
    );
  }
}
