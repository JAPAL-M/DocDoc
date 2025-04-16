import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.changeRadioAppointmentTypeIndex(
      int typeIndex) = ChangeRadioAppointmentTypeIndex;
  const factory AppointmentState.changeRadioPaymentIndex(int paymentIndex) =
      ChangeRadioPaymentIndex;
  const factory AppointmentState.changeDate(String date) =
      AppointmentDateUpdated;
  const factory AppointmentState.changeTime(String time) =
      AppointmentTimeUpdated;
}
