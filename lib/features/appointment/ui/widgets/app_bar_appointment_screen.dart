import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarAppointmentScreen extends StatelessWidget {
  const AppBarAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Iconsax.arrow_left),
        ),
        horizantialSpacing(50),
        Text(
          'Book Appointment',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
