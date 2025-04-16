import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:docdoc_app/core/widgets/horizantal_line_space.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/appointment_type_summary.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/date_and_time_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingInformationAppointmentSummary extends StatelessWidget {
  const BookingInformationAppointmentSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Booking Information',
          style: TextStyles.font15DarkBlueMedium
              .copyWith(fontWeight: FontWeightHelper.semiBold)),
      verticalSpacing(24),
      const DateAndTimeSummary(),
      verticalSpacing(16),
      const HorizantalLineSpace(),
      verticalSpacing(16),
      BlocBuilder<AppointmentCubit, AppointmentState>(
        buildWhen: (previous, current) =>
            current is ChangeRadioAppointmentTypeIndex,
        builder: (context, state) {
          return state.maybeWhen(
            changeRadioAppointmentTypeIndex: (index) {
              return AppointmentTypeSummary(
                appointmentType: index,
              );
            },
            orElse: () => const AppointmentTypeSummary(appointmentType: 0),
          );
        },
      ),
      verticalSpacing(16),
      const HorizantalLineSpace(),
    ]);
  }
}
