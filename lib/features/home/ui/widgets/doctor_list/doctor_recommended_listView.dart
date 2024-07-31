import 'package:docdoc_app/features/details/features/ui/details_screen.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/doctor_recommended_listItems.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DoctorRecommendedListView extends StatelessWidget {
  const DoctorRecommendedListView({super.key, required this.doctorData});

  final List<DoctorData> doctorData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: () {
              context.nextPage(DetailsScreen(doctorData: doctorData[index]));
            },
            child: DoctorRecommendedListItems(
              doctorData: doctorData[index],
            ),
          );
        },
        childCount: doctorData.length,
      ),
    );
  }
}
