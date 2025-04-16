import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeAppointmentScreen extends StatelessWidget {
  final bool isSelected;
  final String time;

  const TimeAppointmentScreen({
    super.key,
    this.isSelected = false, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color:
            isSelected ? ColorsManager.mainBlue : ColorsManager.moreLighterGray,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyles.font12BlueSemiBold.copyWith(
                color: isSelected ? Colors.white : ColorsManager.lightGray),
          ),
        ],
      ),
    );
  }
}