import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class DatePickerAppointmentScreen extends StatefulWidget {
  const DatePickerAppointmentScreen({
    super.key,
    required this.selectedIndex,
    required this.index,
  });

  final int selectedIndex;
  final int index;

  @override
  State<DatePickerAppointmentScreen> createState() =>
      _DatePickerAppointmentScreenState();
}

class _DatePickerAppointmentScreenState
    extends State<DatePickerAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.selectedIndex == widget.index
            ? ColorsManager.mainBlue
            : ColorsManager.moreLighterGray,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('EEEE').format(DateTime.now().add(widget.index.days)),
            style: TextStyles.font12BlueSemiBold.copyWith(
              color: widget.selectedIndex == widget.index
                  ? Colors.white
                  : ColorsManager.lightGray,
            ),
          ),
          Text(
            '${DateTime.now().add(widget.index.days).day}',
            style: TextStyles.font12BlueSemiBold.copyWith(
              color: widget.selectedIndex == widget.index
                  ? Colors.white
                  : ColorsManager.lightGray,
            ),
          ),
        ],
      ),
    );
  }
}
