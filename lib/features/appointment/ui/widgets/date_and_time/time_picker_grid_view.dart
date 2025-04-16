import 'package:docdoc_app/features/appointment/logic/cubit/appointment_cubit.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/time_appointment_screen.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimePickerGridView extends StatefulWidget {
  const TimePickerGridView({super.key, required this.doctorData});
  final DoctorData doctorData;
  @override
  State<TimePickerGridView> createState() => _TimePickerGridViewState();
}

class _TimePickerGridViewState extends State<TimePickerGridView> {
  int selectedTimeIndex = -1;
  @override
  Widget build(BuildContext context) {
    // Parse start and end times
    final start = TimeOfDay(
      hour: int.parse(widget.doctorData.startTime!.split(':')[0]),
      minute: int.parse(widget.doctorData.startTime!.split(':')[1]),
    );
    final end = TimeOfDay(
      hour: int.parse(widget.doctorData.endTime!.split(':')[0]),
      minute: int.parse(widget.doctorData.endTime!.split(':')[1]),
    );

    // Generate time slots
    final timeSlots = _generateTimeSlots(start, end);
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5, // Adjust the aspect ratio
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedTimeIndex = index;
          });
          context.read<AppointmentCubit>().updateSelectedTime(timeSlots[index]);
        },
        child: TimeAppointmentScreen(
          isSelected: selectedTimeIndex == index,
          time: timeSlots[index],
        ),
      ),
      itemCount: timeSlots.length,
    );
  }

  // Helper method to generate time slots
  List<String> _generateTimeSlots(TimeOfDay start, TimeOfDay end) {
    final slots = <String>[];
    var current = start;

    while (_isBeforeOrEqual(current, end)) {
      slots.add(
          '${current.hour.toString().padLeft(2, '0')}:${current.minute.toString().padLeft(2, '0')}');
      current = _addMinutes(current, 30); // Add 30-minute intervals
    }

    return slots;
  }

  // Helper to check if one time is before or equal to another
  bool _isBeforeOrEqual(TimeOfDay a, TimeOfDay b) {
    return a.hour < b.hour || (a.hour == b.hour && a.minute <= b.minute);
  }

  // Helper to add minutes to a TimeOfDay
  TimeOfDay _addMinutes(TimeOfDay time, int minutes) {
    final totalMinutes = time.hour * 60 + time.minute + minutes;
    return TimeOfDay(
      hour: totalMinutes ~/ 60,
      minute: totalMinutes % 60,
    );
  }
}
