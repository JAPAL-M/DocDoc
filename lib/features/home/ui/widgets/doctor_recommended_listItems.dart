import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:docdoc_app/features/home/ui/widgets/raiting_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorRecommendedListItems extends StatelessWidget {
  const DoctorRecommendedListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
            height: 110.h,
            width: 110.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage('assets/images/doc_recommend.png'),
                    fit: BoxFit.fill)),
          ),
          horizantialSpacing(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Randy Wigham',
                style: TextStyles.font15DarkBlueMedium
                    .copyWith(fontWeight: FontWeightHelper.semiBold),
              ),
              verticalSpacing(8),
              Text(
                'General | RSUD Gatot Subroto',
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
