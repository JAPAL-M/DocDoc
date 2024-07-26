import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/raiting_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class DoctorDetailsItems extends StatelessWidget {
  const DoctorDetailsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              Container(
                height: 74.h,
                width: 74.w,
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
        ),
        const Icon(
          Iconsax.message,
          color: ColorsManager.mainBlue,
        )
      ],
    );
  }
}
