import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/appointment_custom_radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentAppointmentContent extends StatelessWidget {
  const PaymentAppointmentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Option',
            style:
                TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black)),
        verticalSpacing(24),
        BlocBuilder<AppointmentCubit, AppointmentState>(
          builder: (context, state) {
            return ListView.separated(
                itemBuilder: (context, index) => AppointmentCustomRadioTile(
                      icon:
                          context.read<AppointmentCubit>().paymentIcons[index],
                      text:
                          context.read<AppointmentCubit>().paymentString[index],
                      colorIcon: ColorsManager.darkBlue,
                      backgroundColor: ColorsManager.lighterMainBlue,
                      value: index,
                      groupValue: context.read<AppointmentCubit>().payment ?? 0,
                      onChanged: (p0) {
                        context.read<AppointmentCubit>().choosePayment(p0);
                      },
                    ),
                separatorBuilder: (context, index) => verticalSpacing(16),
                itemCount:
                    context.read<AppointmentCubit>().paymentString.length);
          },
        ).h(500.h)
      ],
    );
  }
}
