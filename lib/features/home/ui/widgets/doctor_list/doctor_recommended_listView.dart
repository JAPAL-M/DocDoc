import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:docdoc_app/features/home/ui/widgets/doctor_list/doctor_recommended_listItems.dart';
import 'package:flutter/material.dart';

class DoctorRecommendedListView extends StatelessWidget {
  const DoctorRecommendedListView({super.key, required this.doctorData});
  final List<DoctorData> doctorData;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return GestureDetector(
        onTap: () {
          context.pushNamed(Routes.detailsScreen);
        },
        child: DoctorRecommendedListItems(
          doctorData: doctorData[index],
        ),
      );
    }, childCount: doctorData.length));
  }
}
