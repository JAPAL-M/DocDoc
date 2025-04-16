import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_icon_container.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentTypeSummary extends StatelessWidget {
  const PaymentTypeSummary({
    super.key,
    required this.paymentType,
  });
  final int paymentType;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconContainer(
            backgroundColor: ColorsManager.lighterGray,
            icon: context.read<AppointmentCubit>().paymentIcons[paymentType],
            colorIcon: ColorsManager.mainBlue),
        horizantialSpacing(12),
        Text(context.read<AppointmentCubit>().paymentString[paymentType],
            style: TextStyles.font14BlueSemiBold
                .copyWith(color: ColorsManager.darkBlue)),
      ],
    );
  }
}
