import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/raiting_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsItems extends StatelessWidget {
  const DoctorDetailsItems({
    super.key,
    required this.doctorData,
  });
  final DoctorData doctorData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
            height: 74.h,
            width: 74.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage('${doctorData.photo}'),
                    fit: BoxFit.fill)),
          ),
          horizantialSpacing(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorData.name!,
                style: TextStyles.font15DarkBlueMedium
                    .copyWith(fontWeight: FontWeightHelper.semiBold),
              ),
              verticalSpacing(8),
              Text(
                doctorData.specialization!.name!,
                style: TextStyles.font11GrayRegular
                    .copyWith(fontWeight: FontWeightHelper.medium),
              ),
              verticalSpacing(10),
              const RaitingDoctor(),
            ],
          )
        ],
      ),
    );
  }
}
