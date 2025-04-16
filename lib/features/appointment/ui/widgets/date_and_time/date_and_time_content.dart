import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/appointment_type_list.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/date_picker_list_view.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/time_picker_grid_view.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class DateAndTimeContent extends StatelessWidget {
  const DateAndTimeContent({super.key, required this.doctorData});
final DoctorData doctorData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Date',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(24),
        const DatePickerListView().h(100.h),
        verticalSpacing(24),
        Text(
          'Available time',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(24),
         TimePickerGridView(doctorData: doctorData,).h(200.h),
        verticalSpacing(24),
        Text(
          'Appointment Type',
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
        verticalSpacing(24),
        const AppointmentTypeList().h(150.h),
      ],
    );
  }
}
