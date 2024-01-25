import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: context.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      minWidth: double.infinity,
      height: 52.h,
      child: textButton.text.white.lg.bold.make(),
    );
  }
}
