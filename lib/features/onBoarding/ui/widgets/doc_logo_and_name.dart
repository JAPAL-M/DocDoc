import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/Logo.svg").pOnly(right: 10.w),
        Text(
          'DocDoc',
          style: TextStyles.font22BlackBold,
        ),
      ],
    );
  }
}
