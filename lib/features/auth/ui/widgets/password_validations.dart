import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
            text: 'At least 1 lowercase letter', validation: hasLowerCase),
        verticalSpacing(2),
        buildValidationRow(
            text: 'At least 1 uppercase letter', validation: hasUpperCase),
        verticalSpacing(2),
        buildValidationRow(
            text: 'At least 1 special character',
            validation: hasSpecialCharacters),
        verticalSpacing(2),
        buildValidationRow(text: 'At least 1 number', validation: hasNumber),
        verticalSpacing(2),
        buildValidationRow(
            text: 'At least 8 characters long', validation: hasMinLength),
      ],
    );
  }

  Widget buildValidationRow({String? text, bool? validation}) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizantialSpacing(6),
        Text(
          text!,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: validation! ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 3,
            color: validation ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        )
      ],
    );
  }
}
