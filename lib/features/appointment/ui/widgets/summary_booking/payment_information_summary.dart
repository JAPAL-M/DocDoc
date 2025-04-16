import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/theme/font_weight_helper.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/payment_type_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentInformationSummary extends StatelessWidget {
  const PaymentInformationSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Information',
            style: TextStyles.font15DarkBlueMedium
                .copyWith(fontWeight: FontWeightHelper.semiBold)),
        verticalSpacing(24),
        BlocBuilder<AppointmentCubit, AppointmentState>(
          buildWhen: (previous, current) => current is ChangeRadioPaymentIndex,
          builder: (context, state) {
            return state.maybeWhen(
              changeRadioPaymentIndex: (index) {
                return PaymentTypeSummary(paymentType: index);
              },
              orElse: () => const PaymentTypeSummary(paymentType: 0),
            );
          },
        ),
      ],
    );
  }
}
