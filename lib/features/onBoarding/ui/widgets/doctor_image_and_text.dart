import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/onBoarding_image.svg"),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset("assets/images/doctor_image.png")),
        Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: "Best Doctor\nAppointment App"
                .text
                .center
                .xl4
                .bold
                .color(context.primaryColor)
                .make())
      ],
    );
  }
}
