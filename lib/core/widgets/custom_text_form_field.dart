import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final bool? isobscureText;
  final Color? backgroundColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Widget? suffixIcon;
  const CustomTextFormField(
      {super.key,
      this.isobscureText,
      this.backgroundColor,
      this.enabledBorder,
      this.focusedBorder,
      this.contentPadding,
      required this.hintText,
      this.hintStyle,
      this.style,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobscureText ?? false,
      style: style ?? TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          isDense: true,
          filled: true,
          fillColor: backgroundColor ?? ColorsManager.moreLightGray,
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: ColorsManager.lightGray, width: 1),
                  borderRadius: BorderRadius.circular(16)),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorsManager.mainBlue, width: 1),
                  borderRadius: BorderRadius.circular(16)),
          suffixIcon: suffixIcon),
    );
  }
}