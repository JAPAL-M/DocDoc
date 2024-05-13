import 'package:docdoc_app/features/home/ui/widgets/doctor_recommended_listItems.dart';
import 'package:flutter/material.dart';

class DoctorRecommendedListView extends StatelessWidget {
  const DoctorRecommendedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const DoctorRecommendedListItems();
        },
        childCount: 10,
      ),
    );
  }
}
