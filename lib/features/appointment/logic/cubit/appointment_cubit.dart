import 'package:docdoc_app/features/appointment/logic/cubit/appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit() : super(const AppointmentState.initial());

  int? payment;
  int? appointmentType;
  List<String> paymentString = ['Cash', 'Credit Card', 'PayPal'];
  List<IconData> paymentIcons = [Iconsax.money, Iconsax.card, Iconsax.wallet];
  List<String> appointmentTypeNames = [
    'In Person',
    'Online Consultation',
  ];
  List<IconData> appointmentTypeIcons = [
    Iconsax.user,
    Iconsax.calendar,
  ];
  void choosePayment(int? value) {
    payment = value;
    emit(AppointmentState.changeRadioPaymentIndex(value!));
  }

  void chooseAppointmentType(int? value) {
    appointmentType = value;
    emit(AppointmentState.changeRadioAppointmentTypeIndex(value!));
  }

  String selectedDate = '';
  String selectedTime = '';

  void updateSelectedDate(String date) {
    selectedDate = date;
    emit(AppointmentDateUpdated(date));
  }

  void updateSelectedTime(String time) {
    selectedTime = time;
    emit(AppointmentTimeUpdated(time));
  }
}
