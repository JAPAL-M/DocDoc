import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailsScreenAppBar extends StatelessWidget {
  const DetailsScreenAppBar({
    super.key,
    required this.doctorData,
  });
  final DoctorData doctorData;

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
          doctorData.name!,
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
