import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_icon_container.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class DateAndTimeSummary extends StatelessWidget {
  const DateAndTimeSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentState>(
      buildWhen: (previous, current) =>
          current is AppointmentDateUpdated ||
          current is AppointmentTimeUpdated,
      builder: (context, state) {
        final appointmentCubit = context.watch<AppointmentCubit>();
        final selectedDate = appointmentCubit.selectedDate;
        final selectedTime = appointmentCubit.selectedTime;

        return Row(
          children: [
            const CustomIconContainer(
              backgroundColor: ColorsManager.lighterMainBlue,
              icon: Iconsax.calendar,
              colorIcon: ColorsManager.mainBlue,
            ),
            horizantialSpacing(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date&Time',
                    style: TextStyles.font14BlueSemiBold
                        .copyWith(color: ColorsManager.darkBlue)),
                verticalSpacing(4),
                Text(
                    selectedDate.isNotEmpty ? selectedDate : 'No date selected',
                    style: TextStyles.font11GrayRegular),
                verticalSpacing(4),
                Text(
                    selectedTime.isNotEmpty ? selectedTime : 'No time selected',
                    style: TextStyles.font11GrayRegular),
              ],
            ),
          ],
        );
      },
    );
  }
}
