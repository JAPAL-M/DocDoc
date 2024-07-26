import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailsScreenAppBar extends StatelessWidget {
  const DetailsScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Iconsax.back_square),
        ),
        Text(
          'Doctor Name',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.more),
        ),
      ],
    );
  }
}
