import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class ReviewsCustomerDetailsScreen extends StatelessWidget {
  const ReviewsCustomerDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage:
                  const AssetImage('assets/images/doc_recommend.png'),
            ),
            horizantialSpacing(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Jenny Watson',
                  style: TextStyles.font16WhiteSemiBold
                      .copyWith(color: Colors.black),
                ),
                verticalSpacing(8),
                ListView.builder(
                        itemBuilder: (context, index) => const Icon(
                              Iconsax.star1,
                              color: ColorsManager.gold,
                              size: 25,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5)
                    .h(20.h)
                    .w(200.w),
              ],
            ),
            const Spacer(),
            Text(
              'Today',
              style:
                  TextStyles.font12DarkBlueRegular.copyWith(color: Colors.grey),
            )
          ],
        ),
        verticalSpacing(10),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.',
            style:
                TextStyles.font12DarkBlueRegular.copyWith(color: Colors.grey),
          ).pOnly(left: 60)
        ])
      ],
    );
  }
}
