import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_icon_container.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class AppointmentTypeSummary extends StatelessWidget {
  const AppointmentTypeSummary({
    super.key,
    required this.appointmentType,
  });
  final int appointmentType;
  @override
  Widget build(BuildContext context) {
    var appointmentCubit = context.read<AppointmentCubit>();
    return Row(
      children: [
        const CustomIconContainer(
            backgroundColor: ColorsManager.lightGreen,
            icon: Iconsax.clipboard,
            colorIcon: ColorsManager.green),
        horizantialSpacing(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Appointment Type',
                style: TextStyles.font14BlueSemiBold
                    .copyWith(color: ColorsManager.darkBlue)),
            Text(appointmentCubit.appointmentTypeNames[appointmentType],
                style: TextStyles.font11GrayRegular),
          ],
        ),
      ],
    );
  }
}
