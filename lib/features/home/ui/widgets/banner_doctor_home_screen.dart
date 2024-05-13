import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class BannerDoctorHomeScreen extends StatelessWidget {
  const BannerDoctorHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 167.h,
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
          margin: EdgeInsets.only(top: 30.h),
          decoration: BoxDecoration(
              color: ColorsManager.mainBlue,
              borderRadius: BorderRadius.circular(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and schedule with nearest doctor',
                style: TextStyles.font18WhiteMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ).w(143.w),
              verticalSpacing(15),
              CustomMaterialButton(
                  textButton: 'Find Nearby',
                  backgroundColor: Colors.white,
                  styleText: TextStyles.font13BlueRegular,
                  raduisBorder: 48,
                  height: 38.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                  onPressed: () {})
            ],
          ),
        ),
        PositionedDirectional(
          bottom: 0,
          end: 0,
          child: Image.asset(
            'assets/images/doctor_home.png',
            height: 197.h,
            width: 136.w,
          ),
        )
      ],
    );
  }
}
