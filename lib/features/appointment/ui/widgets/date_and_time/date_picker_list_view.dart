import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/date_picker_appointment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DatePickerListView extends StatefulWidget {
  const DatePickerListView({super.key});

  @override
  State<DatePickerListView> createState() => _DatePickerListViewState();
}

class _DatePickerListViewState extends State<DatePickerListView> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                context
                    .read<AppointmentCubit>()
                    .updateSelectedDate(DateFormat('yyyy-MM-dd').format(
                      DateTime.now().add(Duration(
                        days: index,
                      )),
                    ));
              },
              child: DatePickerAppointmentScreen(
                selectedIndex: selectedIndex,
                index: index,
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              width: 10.w,
            ),
        itemCount: 10);
  }
}
