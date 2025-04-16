import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/appointment_custom_radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentTypeList extends StatelessWidget {
  const AppointmentTypeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentState>(
      builder: (context, state) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => AppointmentCustomRadioTile(
            icon: context.read<AppointmentCubit>().appointmentTypeIcons[index],
            text: context.read<AppointmentCubit>().appointmentTypeNames[index],
            colorIcon: ColorsManager.mainBlue,
            backgroundColor: ColorsManager.lighterMainBlue,
            value: index,
            groupValue: context.read<AppointmentCubit>().appointmentType ?? 0,
            onChanged: (value) {
              context.read<AppointmentCubit>().chooseAppointmentType(value);
            },
          ),
          separatorBuilder: (context, index) => verticalSpacing(16),
          itemCount:
              context.read<AppointmentCubit>().appointmentTypeNames.length,
        );
      },
    );
  }
}
