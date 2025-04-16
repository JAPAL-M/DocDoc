import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/booking_information_appointment_summary.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/payment_information_summary.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/doctor_details_items.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';

class SummaryAppointmentContent extends StatelessWidget {
  const SummaryAppointmentContent({super.key, required this.doctorData});
  final DoctorData doctorData;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const BookingInformationAppointmentSummary(),
      verticalSpacing(32),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Doctor Information',
              style: TextStyles.font14BlueSemiBold
                  .copyWith(color: ColorsManager.darkBlue)),
          verticalSpacing(24),
          DoctorDetailsItems(doctorData: doctorData)
        ],
      ),
      verticalSpacing(32),
      const PaymentInformationSummary()
    ]);
  }
}
