import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.backgroundColor,
    this.raduisBorder,
    this.height,
    this.padding,
    this.styleText,
    this.minWight,
  });
  final String textButton;
  final Function() onPressed;
  final Color? backgroundColor;
  final double? raduisBorder;
  final double? height;
  final double? minWight;
  final EdgeInsets? padding;
  final TextStyle? styleText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor ?? context.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(raduisBorder ?? 16),
      ),
      minWidth: minWight,
      padding: padding,
      height: height ?? 52.h,
      child: Text(
        textButton,
        style: styleText ?? TextStyles.font18WhiteMedium,
      ),
    );
  }
}
