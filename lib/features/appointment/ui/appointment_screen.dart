import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/app_bar_appointment_screen.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/date_and_time/date_and_time_content.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/payment/payment_appointment_content.dart';
import 'package:docdoc_app/features/appointment/ui/widgets/summary_booking/summary_appointment_content.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key, required this.doctorData});
  final DoctorData doctorData;

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  int _currentStep = 0; // Variable to hold the current step index
  int isLastStep = 2;
  // Function to go to the next step

  void _nextStep() {
    setState(() {
      if (_currentStep < isLastStep) {
        // Assuming there are 3 steps
        _currentStep++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomMaterialButton(
              textButton: isLastStep == _currentStep ? 'Book Now' : 'Continue',
              minWight: double.infinity,
              onPressed: _nextStep)
          .p(24),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBarAppointmentScreen(),
              Expanded(
                child: Stepper(
                  steps: [
                    Step(
                      title: const SizedBox.shrink(),
                      content:  DateAndTimeContent(doctorData: widget.doctorData,),
                      label: Text(
                        'Date & Time',
                        style: TextStyles.font11GrayRegular,
                      ),
                    ),
                    Step(
                        title: const SizedBox.shrink(),
                        label: Text('Payment',
                            style: TextStyles.font11GrayRegular),
                        content: const PaymentAppointmentContent()),
                    Step(
                        title: const SizedBox.shrink(),
                        content: SummaryAppointmentContent(
                            doctorData: widget
                                .doctorData), // SummaryAppointmentContent(doctorData: wi,),
                        label: Text('Summary',
                            style: TextStyles.font11GrayRegular)),
                  ],
                  currentStep: _currentStep,
                  onStepTapped: (step) => setState(() => _currentStep = step),
                  type: StepperType.horizontal,
                  elevation: 0.0,
                  connectorColor:
                      WidgetStateProperty.all(ColorsManager.mainBlue),
                  controlsBuilder: (context, details) {
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
